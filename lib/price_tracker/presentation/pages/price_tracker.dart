import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_cubit.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_state.dart';

class PriceTracker extends StatefulWidget {
  const PriceTracker({super.key});

  @override
  State<PriceTracker> createState() => _PriceTrackerState();
}

class _PriceTrackerState extends State<PriceTracker> {

  @override
  void initState() {
    super.initState();
    context.read<PriceTrackerCubit>().getMarketSymbols();
    context.read<PriceTrackerCubit>().getSymbolTicks("frxAUDCAD");
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PriceTrackerCubit, PriceTrackerState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(child: Text("price tracker")),
                const SizedBox(height: 40.0,),
                TextButton(
                  onPressed: () => context.read<PriceTrackerCubit>().disposeConnection(), 
                  child: const Text("Reset connection")
                )
              ],
            ),
          ),
        );
      }
    );
  }

  Widget dropDownBuilder(items) {
    return Container();
  }

}