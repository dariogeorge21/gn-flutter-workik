import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gnosis_mobile/data/models/user_model.dart' as user_model;
import 'package:gnosis_mobile/core/errors/failures.dart';
import 'package:gnosis_mobile/domain/repositories/i_auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    Supabase.instance.client,
    const FlutterSecureStorage(),
  );
});

class AuthRepository implements IAuthRepository {
  final SupabaseClient _supabaseClient;
  final FlutterSecureStorage _secureStorage;

  AuthRepository(this._supabaseClient, this._secureStorage);

  @override
  Future<Either<Failure, user_model.User>> signIn(String email, String password) async {
    try {
      final response = await _supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        return const Left(AuthenticationFailure('Sign in failed'));
      }

      final user = user_model.User(
        id: response.user!.id,
        email: response.user!.email!,
        name: response.user!.userMetadata?['name'] ?? 'User',
        photoUrl: response.user!.userMetadata?['avatar_url'],
        createdAt: response.user!.createdAt!,
        preferences: {},
      );

      // Store tokens securely
      await _secureStorage.write(
        key: 'access_token',
        value: response.session?.accessToken,
      );
      await _secureStorage.write(
        key: 'refresh_token',
        value: response.session?.refreshToken,
      );

      return Right(user);
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('An unexpected error occurred'));
    }
  }

  @override
  Future<Either<Failure, user_model.User>> signUp(String email, String password, String name) async {
    try {
      final response = await _supabaseClient.auth.signUp(
        email: email,
        password: password,
        data: {'name': name},
      );

      if (response.user == null) {
        return const Left(AuthenticationFailure('Sign up failed'));
      }

      final user = user_model.User(
        id: response.user!.id,
        email: response.user!.email!,
        name: name,
        photoUrl: response.user!.userMetadata?['avatar_url'],
        createdAt: response.user!.createdAt!,
        preferences: {},
      );

      return Right(user);
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('An unexpected error occurred'));
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _supabaseClient.auth.signOut();
      await _secureStorage.delete(key: 'access_token');
      await _secureStorage.delete(key: 'refresh_token');
      return const Right(unit);
    } catch (e) {
      return Left(ServerFailure('Failed to sign out'));
    }
  }

  @override
  Future<Either<Failure, user_model.User>> getCurrentUser() async {
    try {
      final currentUser = _supabaseClient.auth.currentUser;
      
      if (currentUser == null) {
        return const Left(AuthenticationFailure('No user signed in'));
      }

      final user = user_model.User(
        id: currentUser.id,
        email: currentUser.email!,
        name: currentUser.userMetadata?['name'] ?? 'User',
        photoUrl: currentUser.userMetadata?['avatar_url'],
        createdAt: currentUser.createdAt!,
        preferences: {},
      );

      return Right(user);
    } catch (e) {
      return Left(ServerFailure('Failed to get current user'));
    }
  }

  @override
  Future<Either<Failure, user_model.User>> updateProfile(user_model.User user) async {
    try {
      final response = await _supabaseClient.auth.updateUser(
        UserAttributes(
          data: {
            'name': user.name,
            'avatar_url': user.photoUrl,
          },
        ),
      );

      final updatedUser = user_model.User(
        id: response.user!.id,
        email: response.user!.email!,
        name: response.user!.userMetadata?['name'] ?? 'User',
        photoUrl: response.user!.userMetadata?['avatar_url'],
        createdAt: response.user!.createdAt!,
        preferences: user.preferences,
      );

      return Right(updatedUser);
    } on AuthException catch (e) {
      return Left(AuthenticationFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to update profile'));
    }
  }
}
