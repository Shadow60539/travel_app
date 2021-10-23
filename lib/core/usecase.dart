import 'package:dartz/dartz.dart';

abstract class Usecase<Failure, T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {
  const NoParams();
}
