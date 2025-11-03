import 'package:dartz/dartz.dart';
import 'package:gnosis_mobile/data/models/user_model.dart';
import 'package:gnosis_mobile/core/errors/failures.dart';

abstract class IAuthRepository {
  Future<Either<Failure, User>> signIn(String email, String password);
  Future<Either<Failure, User>> signUp(String email, String password, String name);
  Future<Either<Failure, Unit>> signOut();
  Future<Either<Failure, User>> getCurrentUser();
  Future<Either<Failure, User>> updateProfile(User user);
}
