import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_cubit.dart';
import 'package:price_tracker/price_tracker/presentation/widgets/loading_indicator.dart';

class PriceTracker extends StatefulWidget {
  const PriceTracker({super.key});

  @override
  State<PriceTracker> createState() => _PriceTrackerState();
}

class _PriceTrackerState extends State<PriceTracker> {

  String priceTracker = "";

  @override
  void initState() {
    super.initState();
    // context.read<PriceTrackerCubit>().getMarketSymbols();
    // context.read<PriceTrackerCubit>().getSymbolTicks("frxAUDCAD");
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PriceTrackerCubit, PriceTrackerState>(
      listener: (context, state) {

      },
      builder: (context, state) =>
        state.maybeWhen(
          loading: (_) {
            return const LoadingIndicator();
          },
          loaded: (payload) {
            if (payload.symbols != null) {
              final symbols = payload.symbols!.activeSymbols;
              logger.i(symbols);
            }

            if (payload.ticks != null) {

            }

            return SafeArea(
              child: Scaffold(
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(child: Text("Price Tracker"),),
                    const SizedBox(height: 40,),
                    TextButton(
                      onPressed: () => context.read<PriceTrackerCubit>().disposeConnection(), 
                      child: const Text("Reset connection"),
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () => const SizedBox.shrink()
        )
    );
  }

}