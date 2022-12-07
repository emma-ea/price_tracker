import 'package:price_tracker/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:price_tracker/core/usecase_typedefs.dart';
import 'package:price_tracker/price_tracker/domain/repositories/repository.dart';

class DisposeConnection extends Usecase<VoidType, NoParams> {

  Repository _repository;

  DisposeConnection(this._repository);

  @override
  Future<Either<UIError, VoidType>> call([params]) async {
    try {
      await _repository.forget();
      return const Right(VoidType());
    } on NetworkFailure catch(exception, _) {
      return Left(UIError(exception.message));
    }
  }
  
}