import 'package:kiwi/kiwi.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/core/data/network/network_service_impl.dart';


part 'core_injector.g.dart';

abstract class CoreInjector {

  static late KiwiContainer container;

  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$CoreInjector()._configure();
  }

  @Register.factory(NetworkService, from: NetworkServiceImpl)
  void _configure();

}

CoreInjector coreInjector() => _$CoreInjector();