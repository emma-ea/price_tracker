part of 'price_tracker_cubit.dart';

@freezed
abstract class PriceTrackerState with _$PriceTrackerState {

  const factory PriceTrackerState.initial({required PriceTrackerStatePayload payload}) = 
    _InitialPriceTrackerState;

  const factory PriceTrackerState.loading({required PriceTrackerStatePayload payload}) = 
    _LoadingPriceTrackerState;

  const factory PriceTrackerState.loaded({required PriceTrackerStatePayload payload}) =
    _LoadedPriceTrackerState; 

  const factory PriceTrackerState.error({required PriceTrackerStatePayload payload}) = 
   _ErrorPriceTrackerState;

}

@freezed
abstract class PriceTrackerStatePayload with _$PriceTrackerStatePayload {
  const factory PriceTrackerStatePayload({
    required Stream<MarketSymbol>? symbols,
    required Stream<SymbolTick>? ticks,
    required String error,
  }) = _PriceTrackerStatePayload; 
}