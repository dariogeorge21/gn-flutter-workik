import 'package:dartz/dartz.dart';
import 'package:gnosis_mobile/data/models/user_model.dart' as user_model;
import 'package:gnosis_mobile/core/errors/failures.dart';

abstract class IAuthRepository {
  Future<Either<Failure, user_model.User>> signIn(String email, String password);
  Future<Either<Failure, user_model.User>> signUp(String email, String password, String name);
  Future<Either<Failure, Unit>> signOut();
  Future<Either<Failure, user_model.User>> getCurrentUser();
  Future<Either<Failure, user_model.User>> updateProfile(user_model.User user);
}
