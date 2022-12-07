import 'package:price_tracker/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:price_tracker/core/usecase_typedefs.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';
import 'package:price_tracker/price_tracker/domain/repositories/repository.dart';

class AvailableTicks extends Usecase<SymbolTick?, SymbolParams?> {
  final Repository _repository;

  AvailableTicks(this._repository);

  @override
  Future<Either<UIError, SymbolTick?>> call([params]) async {
    try {
      final results = await _repository.getSymbolTick(params.symbol);
      return Right(results);
    } on NetworkFailure catch (exception, _) {
      return Left(UIError(exception.message));
    }
  }
}

class SymbolParams {
  final String symbol;
  SymbolParams(this.symbol);
}