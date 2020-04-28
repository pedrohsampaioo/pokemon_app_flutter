import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String uid,
    @required Username displayName,
  }) = _User;
}
