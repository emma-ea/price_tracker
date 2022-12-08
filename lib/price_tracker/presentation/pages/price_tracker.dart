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
  Ticks? ticks;

  static const double margin = 20;
  bool loading = false;

  String? selectedMarket = "commodities";
  String? selectedMarketName;
  String? selectedAsset;

  Color priceColor = Colors.grey;

  Size appBarSize = Size(
    AppBar().preferredSize.width,
    AppBar().preferredSize.height
  );

  @override
  void initState() {
    super.initState();
    markets = context.read<PriceTrackerCubit>().state.payload.symbols!.activeSymbols;
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
            loading = false;
            if (payload.ticks != null) {
              ticks = payload.ticks!.tick;
              logger.i(ticks!.quote);
              price = ticks!.quote;
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
            // Navigator.pop(context);
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
                        }).toList().toSet(),
                        onChanged: (market) {
                          selectedMarket = market;
                          setState(() {
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
                        hint: Text(selectedAsset  ?? "Select an Asset", style: textStyle),
                        items: assets!.map<DropdownMenuItem<String>>((ActiveSymbol item) {
                          return DropdownMenuItem(
                            value: item.symbol,
                            child: Text(item.displayName ?? ""),
                            onTap: () {
                              setState(() {
                                selectedAsset = item.displayName;
                              });
                            },
                          );
                        }).toList().toSet(),
                        onChanged: (asset) {
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