import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/charts/data/model/ts_price_ticker.dart';
import 'package:price_tracker/charts/presentation/widgets/ts_price_chart.dart';
import 'package:price_tracker/core/di/constants.dart';
import 'package:price_tracker/core/failures.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:price_tracker/dark_mode/presentation/state/dark_mode_cubit.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_cubit.dart';
import 'package:price_tracker/price_tracker/presentation/widgets/exception.dart';
import 'package:price_tracker/price_tracker/presentation/widgets/info_dialog.dart';
import 'package:price_tracker/price_tracker/presentation/widgets/list_drop_down.dart';
import 'package:price_tracker/price_tracker/presentation/widgets/loading_indicator.dart';

class PriceTracker extends StatefulWidget {
  const PriceTracker({super.key});

  @override
  State<PriceTracker> createState() => _PriceTrackerState();
}

class _PriceTrackerState extends State<PriceTracker> {

  double? price;
  double? bid, ask;
  double oldPrice = 0;

  List<ActiveSymbol>? markets;
  List<String>? filteredMarkets;
  List<ActiveSymbol>? assets;

  static const double margin = 20;
  bool loading = false;

  String? selectedMarket;
  String? selectedMarketName;
  String? selectedAssetName;

  Color priceColor = Colors.grey;

  Size appBarSize = Size(
    AppBar().preferredSize.width,
    AppBar().preferredSize.height
  );

  List<PriceData> priceData = [];

  @override
  void initState() {
    super.initState();
    markets = context.read<PriceTrackerCubit>().state.payload.symbols!.activeSymbols;
    if (markets != null) filteredMarkets =  markets!.map((e) => e.market!).toSet().toList();
    assets = [];
  }

  @override
  Widget build(BuildContext context) {
    return markets != null ? BlocConsumer<PriceTrackerCubit, PriceTrackerState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: (){},
          ticksLoading: ((payload) {
            loading = true;
          }),
          ticksLoaded: (payload) {
            filteredMarkets =  markets!.map((e) => e.market!).toSet().toList();
            loading = false;
            price = 0.0;
            if (payload.ticks!.tick != null) {

              final tk = payload.ticks!.tick;
              price = tk!.quote;
              bid = tk.bid;
              ask = tk.ask;
              final date = DateTime.fromMillisecondsSinceEpoch(tk.epoch);
              priceData.add(PriceData(date: date, quoteOT: price!));
              logger.i(price);

              if (price! > oldPrice) {
                priceColor = Colors.green;
              } else if (price! < oldPrice) {
                priceColor = Colors.red;
              } else {
                priceColor = Colors.grey;
              }
              oldPrice = price!;
            }
          },
          symbolsLoaded: (payload) {
            final marketsList = payload.symbols?.activeSymbols;
            if (marketsList != null) {
              markets = marketsList;
              filteredMarkets =  markets!.map((e) => e.market!).toSet().toList();
            }
          },
          error: (payload) {
            loading = false;
            infoDialog(
              context: context, 
              title: "Error", 
              msg: payload.error,
              retry: () {
                Navigator.pop(context);
                context.read<PriceTrackerCubit>().getMarketSymbols();
              }
            );
          }
        );
      },
      builder: (context, state) {
        const textStyle = TextStyle(fontSize: 20.0);
        String? title = BlocProvider.of<DarkModeCubit>(context).state.payload.darkMode?.title;
        return WillPopScope(
          onWillPop: () {
            context.read<PriceTrackerCubit>().disposeConnection();
            logger.i("exiting");
            return Future.value(true);
          },
          child: SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: appBarSize,
                child: BlocBuilder<DarkModeCubit, DarkModeState>(
                  builder: (context, state) {
                    title = state.payload.darkMode?.title;
                    return Center(
                      child: Text(" Price Tracker 💱 $title", style: textStyle,)
                    );
                  }
                ),
              ),
              body: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListDropDown(
                        hint: Text(selectedMarketName ?? "Select a Market", style: textStyle),
                        items: markets?.map<DropdownMenuItem<String>>((ActiveSymbol item) {
                          return DropdownMenuItem(
                            value: item.market,
                            child: Text(item.marketName ?? ""),
                            onTap: () {
                              setState(() {
                                selectedMarketName = item.marketName;
                              });
                            },
                          );
                        }).toList()?..retainWhere((market) => filteredMarkets!.remove(market.value)),
                        onChanged: (market) {
                          selectedMarket = market;
                          setState(() {
                            filteredMarkets =  markets!.map((e) => e.market!).toSet().toList();
                            selectedAssetName = null;
                            assets = markets!.toList();
                            assets!.retainWhere((asset) => selectedMarket == asset.market);
                          });
                        }, 
                      ),
                    ],
                  ),
        
                  const SizedBox(height: margin,),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       ListDropDown(
                        hint: Text(selectedAssetName  ?? "Select an Asset", style: textStyle),
                        items: assets!.map<DropdownMenuItem<String>>((ActiveSymbol item) {
                          return DropdownMenuItem(
                            value: item.symbol,
                            child: Text(item.displayName ?? ""),
                            onTap: () {
                              setState(() {
                                selectedAssetName = item.displayName;
                              });
                            },
                          );
                        }).toList(),
                        onChanged: (asset) {
                          oldPrice = 0.0;
                          priceData.clear();
                          logger.i(asset);
                          context.read<PriceTrackerCubit>().getSymbolTicks(asset ?? "");
                        }, 
                      ),
                    ],
                  ),
        
                  const SizedBox(height: margin,),
        
                  if (loading) ...[
                    const Center(child: CircularProgressIndicator()),
                  ] else ... [
                    price != null 
                    ? RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.blueAccent),
                        children: [
                          TextSpan(text: 'Ask ${ask ?? ''} -- '),
                          TextSpan(text: 'Bid ${bid ?? ''} -- '),
                          TextSpan(
                            text: 'Price ${price ?? ''}', 
                            style: TextStyle(color: priceColor)
                          ),
                        ]
                      ),
                    )
                    : const SizedBox.shrink(),

                    const SizedBox(height: margin,),
                    // chart
                    priceData.isNotEmpty 
                    ? Expanded(
                      child: SizedBox(
                        child: PriceChart(priceData: priceData, title: "$selectedAssetName 💱"),
                      ),
                    ) 
                    : const SizedBox.shrink(),

                  ]
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  // i should probably have a bool value passed
                  // to the cubit to change the theme state
                  if (title == TITLE_LIGHT) {
                    BlocProvider.of<DarkModeCubit>(context).darkMode();
                    return;
                  }
                  BlocProvider.of<DarkModeCubit>(context).lightMode();
                },
                child: const Icon(Icons.lightbulb),
              ),
            ),
          ),
        );
      }
    ) : ExceptionScreen(ApiFailure(ApiErrors.unknown, "Markets Not Found"));
  }
}