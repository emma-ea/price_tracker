import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_cubit.dart';

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
    context.read<PriceTrackerCubit>().getMarketSymbols();
    context.read<PriceTrackerCubit>().getSymbolTicks("frxAUDCAD");
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PriceTrackerCubit, PriceTrackerState>(
      listener: (context, state) {

      },
      builder: (context, state) =>
        state.maybeWhen(
          loading: (_) {
            return const Center(child: CircularProgressIndicator(),);
          },
          loaded: (payload) {
            logger.i(payload.symbols);
            logger.i(payload.ticks);
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