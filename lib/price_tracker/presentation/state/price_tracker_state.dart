part of 'price_tracker_cubit.dart';

@freezed
abstract class PriceTrackerState with _$PriceTrackerState {

  const factory PriceTrackerState.initial({required PriceTrackerStatePayload payload}) = 
    _InitialPriceTrackerState;

  const factory PriceTrackerState.loading({required PriceTrackerStatePayload payload}) = 
    _LoadingPriceTrackerState;

  const factory PriceTrackerState.loaded({required PriceTrackerStatePayload payload}) =
    _LoadedPriceTrackerState; 

  const factory PriceTrackerState.symbolsLoaded({required PriceTrackerStatePayload payload}) = 
    _SymbolsLoadedPriceTrackerState;

  const factory PriceTrackerState.ticksLoaded({required PriceTrackerStatePayload payload}) = 
    _TicksLoadedPriceTrackerState; 

  const factory PriceTrackerState.error({required PriceTrackerStatePayload payload}) = 
   _ErrorPriceTrackerState;

}

@freezed
abstract class PriceTrackerStatePayload with _$PriceTrackerStatePayload {
  const factory PriceTrackerStatePayload({
    required MarketSymbol? symbols,
    required SymbolTick? ticks,
    required String error,
  }) = _PriceTrackerStatePayload; 
}