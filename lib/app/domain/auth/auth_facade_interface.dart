import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'auth_failures.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class AuthFacadeInterface {
  Future<Option<User>> getCurrentSignedUser();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Username username,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
