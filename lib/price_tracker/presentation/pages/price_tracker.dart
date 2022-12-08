import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_cubit.dart';
import 'package:price_tracker/price_tracker/presentation/widgets/list_drop_down.dart';
import 'package:price_tracker/price_tracker/presentation/widgets/loading_indicator.dart';

class PriceTracker extends StatefulWidget {
  const PriceTracker({super.key});

  @override
  State<PriceTracker> createState() => _PriceTrackerState();
}

class _PriceTrackerState extends State<PriceTracker> {

  double? price;
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

  @override
  void initState() {
    super.initState();
    markets = context.read<PriceTrackerCubit>().state.payload.symbols!.activeSymbols;
    filteredMarkets =  markets!.map((e) => e.market!).toSet().toList();
    assets = [];
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PriceTrackerCubit, PriceTrackerState>(
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
              price = payload.ticks!.tick!.quote;
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
          error: (payload) {
            // show error dialog
          }
        );
      },
      builder: (context, state) {
        const textStyle = TextStyle(fontSize: 20.0);
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
                child: const Center(
                  child: Text("Price Tracker", style: textStyle,)
                ),
              ),
              body: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListDropDown(
                        hint: Text(selectedMarketName ?? "Select a Market", style: textStyle),
                        items: markets!.map<DropdownMenuItem<String>>((ActiveSymbol item) {
                          return DropdownMenuItem(
                            value: item.market,
                            child: Text(item.marketName ?? ""),
                            onTap: () {
                              setState(() {
                                selectedMarketName = item.marketName;
                              });
                            },
                          );
                        }).toList()..retainWhere((market) => filteredMarkets!.remove(market.value)),
                        onChanged: (market) {
                          selectedMarket = market;
                          setState(() {
                            filteredMarkets =  markets!.map((e) => e.market!).toSet().toList();
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
                          context.read<PriceTrackerCubit>().getSymbolTicks(asset ?? "");
                        }, 
                      ),
                    ],
                  ),
        
                  const SizedBox(height: margin,),
        
                  if (loading) ...[
                    const Center(child: CircularProgressIndicator()),
                  ] else ... [
                    Text(
                      "Price ${price ?? ''}", 
                      style: TextStyle(fontSize: 20.0, color: priceColor),
                    ),
                  ]
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}