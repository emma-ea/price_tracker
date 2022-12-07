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

  double price = 0;
  double oldPrice = 0;
  List<ActiveSymbol>? symbols;
  Ticks? ticks;

  static const double margin = 20;
  bool loading = false;

  Size appBarSize = Size(
    AppBar().preferredSize.width,
    AppBar().preferredSize.height
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PriceTrackerCubit, PriceTrackerState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: (){},
          symbolsLoaded: (payload) {
            symbols = payload.symbols!.activeSymbols!;
          },
          ticksLoaded: (payload) {
            ticks = payload.ticks!.tick;
            logger.i(ticks!.quote);
            price = ticks!.quote ?? 0;
            setState(() {
              loading = false;
            });
          },
        );
      },
      builder: (context, state) =>
        WillPopScope(
          onWillPop: () {
            context.read<PriceTrackerCubit>().disposeConnection();
            // Navigator.pop(context);
            return Future.value(true);
          },
          child: SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: appBarSize,
                child: const Center(child: Text("Price Tracker")),
              ),
              body: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListDropDown(
                        hint: "Select Market",
                        items: symbols ?? [],
                        onChanged: (symbol) {
                          context.read<PriceTrackerCubit>().getSymbolTicks(symbol ?? "");
                        }
                      ),
                    ],
                  ),
        
                  const SizedBox(height: margin,),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListDropDown(
                        hint: "Select Asset",
                        items: symbols ?? [],
                        onChanged: (symbol) {
                          context.read<PriceTrackerCubit>().getSymbolTicks(symbol ?? "");
                          setState(() {
                            loading = true;
                          });
                        }
                      ),
                    ],
                  ),
        
                  const SizedBox(height: margin,),
        
                  if (loading) ...[
                    const CircularProgressIndicator(),
                  ] else ... [
                    Text("Price: $price"),
                  ]
                ],
              ),
            ),
          ),
        )
    );
  }
}