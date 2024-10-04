import 'package:bloc_architechture/core/usecase/usecase.dart';
import 'package:bloc_architechture/core/utils/typedef.dart';
import 'package:bloc_architechture/src/authentication/domain/repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class CreateUser extends UseCaseWithParams<void, CreateUserParams>{
  const CreateUser(this._repository);
  final AuthenticationRepository _repository;

  ResultVoid createUser ({
    required String createdAt,
    required String name,
    required String avatar
  })async =>_repository.createUser(createdAt: createdAt, name: name, avatar: avatar);

  @override
  ResultVoid call(CreateUserParams params) async =>
      _repository.createUser(createdAt: params.createdAt, name: params.name, avatar: params.avatar);
}
class CreateUserParams extends Equatable{
  const CreateUserParams({required this.name, required this.createdAt, required this.avatar});
  final String name;
  final String createdAt;
  final String avatar;

  @override
  // TODO: implement props
  List<Object?> get props => [name, createdAt, avatar];

}