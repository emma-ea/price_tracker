import 'package:dartz/dartz.dart';
import 'package:price_tracker/core/failures.dart';

abstract class Usease<Type, Params> {
  Future<Either<UIError, Type>> call([params]);
}

class VoidType { const VoidType(); }

class NoParams { const NoParams(); }