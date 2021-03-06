// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AppIsStarting appIsStarting() {
    return const AppIsStarting();
  }

  SignOutPressed signOutPressed() {
    return const SignOutPressed();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appIsStarting,
    required TResult Function() signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appIsStarting,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppIsStarting value) appIsStarting,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppIsStarting value)? appIsStarting,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AppIsStartingCopyWith<$Res> {
  factory $AppIsStartingCopyWith(
          AppIsStarting value, $Res Function(AppIsStarting) then) =
      _$AppIsStartingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppIsStartingCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AppIsStartingCopyWith<$Res> {
  _$AppIsStartingCopyWithImpl(
      AppIsStarting _value, $Res Function(AppIsStarting) _then)
      : super(_value, (v) => _then(v as AppIsStarting));

  @override
  AppIsStarting get _value => super._value as AppIsStarting;
}

/// @nodoc

class _$AppIsStarting implements AppIsStarting {
  const _$AppIsStarting();

  @override
  String toString() {
    return 'AuthEvent.appIsStarting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppIsStarting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appIsStarting,
    required TResult Function() signOutPressed,
  }) {
    return appIsStarting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appIsStarting,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (appIsStarting != null) {
      return appIsStarting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppIsStarting value) appIsStarting,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return appIsStarting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppIsStarting value)? appIsStarting,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (appIsStarting != null) {
      return appIsStarting(this);
    }
    return orElse();
  }
}

abstract class AppIsStarting implements AuthEvent {
  const factory AppIsStarting() = _$AppIsStarting;
}

/// @nodoc
abstract class $SignOutPressedCopyWith<$Res> {
  factory $SignOutPressedCopyWith(
          SignOutPressed value, $Res Function(SignOutPressed) then) =
      _$SignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutPressedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignOutPressedCopyWith<$Res> {
  _$SignOutPressedCopyWithImpl(
      SignOutPressed _value, $Res Function(SignOutPressed) _then)
      : super(_value, (v) => _then(v as SignOutPressed));

  @override
  SignOutPressed get _value => super._value as SignOutPressed;
}

/// @nodoc

class _$SignOutPressed implements SignOutPressed {
  const _$SignOutPressed();

  @override
  String toString() {
    return 'AuthEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appIsStarting,
    required TResult Function() signOutPressed,
  }) {
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appIsStarting,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppIsStarting value) appIsStarting,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppIsStarting value)? appIsStarting,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class SignOutPressed implements AuthEvent {
  const factory SignOutPressed() = _$SignOutPressed;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  InitialState initial() {
    return const InitialState();
  }

  IsLoggedIn isLoggedIn() {
    return const IsLoggedIn();
  }

  UserIsNotLoggedIn userIsNotLoggedIn() {
    return const UserIsNotLoggedIn();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoggedIn,
    required TResult Function() userIsNotLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoggedIn,
    TResult Function()? userIsNotLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IsLoggedIn value) isLoggedIn,
    required TResult Function(UserIsNotLoggedIn value) userIsNotLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IsLoggedIn value)? isLoggedIn,
    TResult Function(UserIsNotLoggedIn value)? userIsNotLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(
      InitialState _value, $Res Function(InitialState) _then)
      : super(_value, (v) => _then(v as InitialState));

  @override
  InitialState get _value => super._value as InitialState;
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoggedIn,
    required TResult Function() userIsNotLoggedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoggedIn,
    TResult Function()? userIsNotLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IsLoggedIn value) isLoggedIn,
    required TResult Function(UserIsNotLoggedIn value) userIsNotLoggedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IsLoggedIn value)? isLoggedIn,
    TResult Function(UserIsNotLoggedIn value)? userIsNotLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AuthState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class $IsLoggedInCopyWith<$Res> {
  factory $IsLoggedInCopyWith(
          IsLoggedIn value, $Res Function(IsLoggedIn) then) =
      _$IsLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsLoggedInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $IsLoggedInCopyWith<$Res> {
  _$IsLoggedInCopyWithImpl(IsLoggedIn _value, $Res Function(IsLoggedIn) _then)
      : super(_value, (v) => _then(v as IsLoggedIn));

  @override
  IsLoggedIn get _value => super._value as IsLoggedIn;
}

/// @nodoc

class _$IsLoggedIn implements IsLoggedIn {
  const _$IsLoggedIn();

  @override
  String toString() {
    return 'AuthState.isLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoggedIn,
    required TResult Function() userIsNotLoggedIn,
  }) {
    return isLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoggedIn,
    TResult Function()? userIsNotLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IsLoggedIn value) isLoggedIn,
    required TResult Function(UserIsNotLoggedIn value) userIsNotLoggedIn,
  }) {
    return isLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IsLoggedIn value)? isLoggedIn,
    TResult Function(UserIsNotLoggedIn value)? userIsNotLoggedIn,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn(this);
    }
    return orElse();
  }
}

abstract class IsLoggedIn implements AuthState {
  const factory IsLoggedIn() = _$IsLoggedIn;
}

/// @nodoc
abstract class $UserIsNotLoggedInCopyWith<$Res> {
  factory $UserIsNotLoggedInCopyWith(
          UserIsNotLoggedIn value, $Res Function(UserIsNotLoggedIn) then) =
      _$UserIsNotLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserIsNotLoggedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $UserIsNotLoggedInCopyWith<$Res> {
  _$UserIsNotLoggedInCopyWithImpl(
      UserIsNotLoggedIn _value, $Res Function(UserIsNotLoggedIn) _then)
      : super(_value, (v) => _then(v as UserIsNotLoggedIn));

  @override
  UserIsNotLoggedIn get _value => super._value as UserIsNotLoggedIn;
}

/// @nodoc

class _$UserIsNotLoggedIn implements UserIsNotLoggedIn {
  const _$UserIsNotLoggedIn();

  @override
  String toString() {
    return 'AuthState.userIsNotLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserIsNotLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoggedIn,
    required TResult Function() userIsNotLoggedIn,
  }) {
    return userIsNotLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoggedIn,
    TResult Function()? userIsNotLoggedIn,
    required TResult orElse(),
  }) {
    if (userIsNotLoggedIn != null) {
      return userIsNotLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(IsLoggedIn value) isLoggedIn,
    required TResult Function(UserIsNotLoggedIn value) userIsNotLoggedIn,
  }) {
    return userIsNotLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(IsLoggedIn value)? isLoggedIn,
    TResult Function(UserIsNotLoggedIn value)? userIsNotLoggedIn,
    required TResult orElse(),
  }) {
    if (userIsNotLoggedIn != null) {
      return userIsNotLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserIsNotLoggedIn implements AuthState {
  const factory UserIsNotLoggedIn() = _$UserIsNotLoggedIn;
}
