import 'package:bloc_architechture/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

typedef ResultFuture<T>=Future<Either<Failure,T>>;
typedef ResultVoid=ResultFuture<void>;