import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:price_tracker/price_tracker/domain/usecases/available_market_symbol.dart';
import 'package:price_tracker/price_tracker/domain/usecases/available_symbol_ticks.dart';
import 'package:price_tracker/price_tracker/domain/usecases/dispose_connection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';

part 'price_tracker_cubit.freezed.dart';
part 'price_tracker_state.dart';

class PriceTrackerCubit extends Cubit<PriceTrackerState> {

  final AvailableSymbols _marketSymbols;
  final AvailableTicks _symbolTicks;
  final DisposeConnection _forget;

  PriceTrackerCubit(
    this._marketSymbols,
    this._symbolTicks,
    this._forget,
  ) : super(
      const PriceTrackerState.initial(
        payload: PriceTrackerStatePayload(
          symbols: null, 
          ticks: null,
          error: "",
        ) 
      )
    );

  Future<void> getMarketSymbols() async {
    emit(PriceTrackerState.loading(payload: state.payload.copyWith()));
    
    final results = await _marketSymbols();

    results.fold(
      (l) => emit(PriceTrackerState.error(payload: state.payload.copyWith(error: l.message))), 
      (r) {
        r!.listen((event) => emit(PriceTrackerState.symbolsLoaded(payload: state.payload.copyWith(symbols: event))))
          .onError(handleError);
      },
    );
  }

  Future<void> getSymbolTicks(String symbol) async {
    emit(PriceTrackerState.ticksLoading(payload: state.payload.copyWith()));

    final results = await _symbolTicks(SymbolParams(symbol));

    results.fold(
      (l) => emit(PriceTrackerState.error(payload: state.payload.copyWith(error: l.message))), 
      (r) {
        r!.listen((event) => emit(PriceTrackerState.ticksLoaded(payload: state.payload.copyWith(ticks: event))))
          .onError(handleError);
      },
    );
  }

  Future<void> disposeConnection() async {
    emit(PriceTrackerState.loading(payload: state.payload.copyWith()));

    final results = await _forget();
    
    results.fold(
      (l) => emit(PriceTrackerState.error(payload: state.payload.copyWith(error: l.message))), 
      (r) => emit(PriceTrackerState.loaded(payload: state.payload.copyWith(symbols: null, ticks: null)))
    );
  }

  void handleError(e, s) {  // exception, stacktrace
    emit(PriceTrackerState.error(payload: state.payload.copyWith(error: e.message)));
  }
  
}