import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/price_tracker/domain/usecases/available_market_symbol.dart';
import 'package:price_tracker/price_tracker/domain/usecases/available_symbol_ticks.dart';
import 'package:price_tracker/price_tracker/presentation/state/price_tracker_state.dart';

class PriceTrackerCubit extends Cubit<PriceTrackerState> {

  final AvailableSymbols _marketSymbols;
  final AvailableTicks _symbolTicks;

  PriceTrackerCubit(
    this._marketSymbols,
    this._symbolTicks
  ) : super(PriceTrackerState.initial());

  Future<void> getMarketSymbols() async {
    emit(PriceTrackerState.loading());
    
    final results = await _marketSymbols();

    results.fold(
      (l) => emit(PriceTrackerState.error()), 
      (r) => emit(PriceTrackerState.loaded()),
    );
  }

  Future<void> getSymbolTicks(String symbol) async {
    emit(PriceTrackerState.loading());

    final results = await _symbolTicks();

    results.fold(
      (l) => emit(PriceTrackerState.error()), 
      (r) => emit(PriceTrackerState.loaded()),
    );
  }
  
}