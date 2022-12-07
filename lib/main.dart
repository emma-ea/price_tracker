import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/core/di/configure_injectors.dart';
import 'package:price_tracker/price_tracker/domain/di/price_tracker_module_injector.dart';
import 'package:price_tracker/price_tracker/domain/usecases/available_market_symbol.dart';
import 'package:price_tracker/price_tracker/domain/usecases/available_symbol_ticks.dart';
import 'package:price_tracker/price_tracker/domain/usecases/dispose_connection.dart';
import 'package:price_tracker/price_tracker/presentation/pages/price_tracker.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjectors();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PriceTrackerCubit(
        PriceTrackerModuleInjector.resolve<AvailableSymbols>(),
        PriceTrackerModuleInjector.resolve<AvailableTicks>(),
        PriceTrackerModuleInjector.resolve<DisposeConnection>()
      ),
      child: const MaterialApp(
        title: 'Price Tracker',
        home: PriceTracker(),
      ),
    );
  }
}
