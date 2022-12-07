import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/price_tracker/presentation/pages/price_tracker.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PriceTrackerCubit(_marketSymbols, _symbolTicks),
      child: const MaterialApp(
        title: 'Price Tracker',
        home: PriceTracker(),
      ),
    );
  }
}
