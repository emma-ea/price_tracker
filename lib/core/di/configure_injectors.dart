import 'package:price_tracker/core/di/core_injector.dart';
import 'package:price_tracker/price_tracker/domain/di/price_tracker_module_injector.dart';

void configureInjectors() {
  coreInjector().setup();
  priceTrackerModuleInjector().setup();
}