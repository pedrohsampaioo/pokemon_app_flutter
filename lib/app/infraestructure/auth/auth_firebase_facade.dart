import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/auth/auth_facade_interface.dart';
import '../../domain/auth/auth_failures.dart';
import '../../domain/auth/value_objects.dart';

class AuthFirebaseFacade implements AuthFacadeInterface {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  AuthFirebaseFacade({
    @required this.firebaseAuth,
    @required this.googleSignIn,
  });

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      return await firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((v) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(const AuthFailure.emailAlreadyInUse());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      return await firebaseAuth
          .signInWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((v) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == "ERROR_USER_NOT_FOUND" ||
          e.code == "ERROR_WRONG_PASSWORD") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
