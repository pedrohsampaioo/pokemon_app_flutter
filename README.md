# Pokemon App

<img src="/readme/demo/pages.gif" width="200" height="400">

## Screenshots

## Why?

This project is part of my daily studies.

Email-me: pedrohsampaioo@outlook.com

Connect with me at [LinkedIn](https://www.linkedin.com/in/pedro-henrique-da-silva-sampaio-ba2b7716b/).

## Some Observations about this App

1. Errors that are handled in the application:
   <br>
     
    - <strong> cancelledByUser </strong> : occurs when the user cancels the authentication through social networks.
   <br>
   
   - <strong> serverError </strong> : some authentication error not listed.
   <br>
   
   - <strong> invalidEmailAndPasswordCombination </strong> : mismatched email and password combination.
   <br>
   
   - <strong> emailAlreadyInUse </strong>.
   <br>
   
   - <strong> errorWhenRegisteringUsername </strong> : occurs when there is a failure to register the user name..
   <br>
   
   - <strong> To identify more errors <a href="https://github.com/firebase/FirebaseUI-Android/blob/master/auth/src/main/java/com/firebase/ui/auth/util/FirebaseAuthError.java">access</a> </strong>.
   <br>
   
2. The structure used in this project was proposed by <a href="https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/">Reso Coder</a>.

3. Google authentication and email with password.

## Getting Started

### Installing

**Cloning the Repository**

```
$ git clone https://github.com/pedrohsampaioo/pokemon_app_flutter.git

$ cd pokemon_app_flutter
```

### Installing dependencies

```
$ flutter pub get
```

### Firebase settings

First add the project to your Firebase console, <a href="https://firebase.google.com/docs/android/setup?authuser=0">follow these steps</a>. Soon after, perform settings related to phone number authentication with <a href="https://firebase.google.com/docs/auth/android/phone-auth">Android</a> and <a href="https://firebase.google.com/docs/auth/ios/phone-auth">iOS</a> .

### Running

With all dependencies installed and the environment properly configured, you can now run the app:

```
$ flutter run
```

## Build With

- <a href="https://pub.dev/packages/flutter_bloc">flutter_bloc</a> : State Manager
- <a href="https://pub.dev/packages/google_fonts#-readme-tab-">google_fonts</a> :  Flutter allows you to easily use any of the 977 fonts.
- <a href="https://pub.dev/packages/firebase_core">firebase_core</a> : Authentication.
- <a href="https://pub.dev/packages/google_sign_in">google_sign_in</a> : Authentication with Google.
- <a href="https://pub.dev/packages/dio">dio</a> : Request HTTP.
- <a href="https://pub.dev/packages/flutter_modular">flutter_modular</a> : Router and dependency inject
- <a href="https://pub.dev/packages/freezed_annotation">freezed_annotation</a> : Annotation for the freezed
- <a href="https://pub.dev/packages/dartz">dartz</a> : Functional programming
- <a href="https://pub.dev/packages/flutter_masked_text">flutter_masked_text</a> : Masked text input for flutter.
- <a href="https://pub.dev/packages/firebase_auth#-readme-tab-">firebase_auth</a> : Authentication.
- <a href="https://pub.dev/packages/build_runner">build_runner</a> : Code generator
- <a href="https://pub.dev/packages/freezed">freezed</a> : Implements Data Class and Sealed Class
