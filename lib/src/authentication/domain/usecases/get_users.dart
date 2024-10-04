import 'package:bloc_architechture/core/usecase/usecase.dart';
import 'package:bloc_architechture/core/utils/typedef.dart';
import 'package:bloc_architechture/src/authentication/domain/entities/user.dart';
import 'package:bloc_architechture/src/authentication/domain/repository/authentication_repository.dart';

class GetUsers extends UseCaseWithoutParams<List<User>>{
  const GetUsers(this._repository);
  final AuthenticationRepository _repository;
  @override
  ResultFuture<List<User>> call() async=>_repository.getUsers();
}