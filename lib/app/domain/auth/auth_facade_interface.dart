import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pokemon_app/app/domain/auth/value_objects.dart';

import 'auth_failures.dart';

abstract class AuthFacadeInterface {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
