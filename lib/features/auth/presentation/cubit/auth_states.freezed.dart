// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthStates()';
}


}

/// @nodoc
class $AuthStatesCopyWith<$Res>  {
$AuthStatesCopyWith(AuthStates _, $Res Function(AuthStates) __);
}


/// Adds pattern-matching-related methods to [AuthStates].
extension AuthStatesPatterns on AuthStates {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( OtpVerifiedSuccess value)?  otpVerifiedSuccess,TResult Function( OtpResentSuccess value)?  otpResentSuccess,TResult Function( Error value)?  error,TResult Function( FieldErrors value)?  fieldErrors,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case OtpVerifiedSuccess() when otpVerifiedSuccess != null:
return otpVerifiedSuccess(_that);case OtpResentSuccess() when otpResentSuccess != null:
return otpResentSuccess(_that);case Error() when error != null:
return error(_that);case FieldErrors() when fieldErrors != null:
return fieldErrors(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( OtpVerifiedSuccess value)  otpVerifiedSuccess,required TResult Function( OtpResentSuccess value)  otpResentSuccess,required TResult Function( Error value)  error,required TResult Function( FieldErrors value)  fieldErrors,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case OtpVerifiedSuccess():
return otpVerifiedSuccess(_that);case OtpResentSuccess():
return otpResentSuccess(_that);case Error():
return error(_that);case FieldErrors():
return fieldErrors(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( OtpVerifiedSuccess value)?  otpVerifiedSuccess,TResult? Function( OtpResentSuccess value)?  otpResentSuccess,TResult? Function( Error value)?  error,TResult? Function( FieldErrors value)?  fieldErrors,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case OtpVerifiedSuccess() when otpVerifiedSuccess != null:
return otpVerifiedSuccess(_that);case OtpResentSuccess() when otpResentSuccess != null:
return otpResentSuccess(_that);case Error() when error != null:
return error(_that);case FieldErrors() when fieldErrors != null:
return fieldErrors(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  success,TResult Function( String message)?  otpVerifiedSuccess,TResult Function( String message)?  otpResentSuccess,TResult Function( String error)?  error,TResult Function( Map<String, List<String>> errors)?  fieldErrors,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.message);case OtpVerifiedSuccess() when otpVerifiedSuccess != null:
return otpVerifiedSuccess(_that.message);case OtpResentSuccess() when otpResentSuccess != null:
return otpResentSuccess(_that.message);case Error() when error != null:
return error(_that.error);case FieldErrors() when fieldErrors != null:
return fieldErrors(_that.errors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  success,required TResult Function( String message)  otpVerifiedSuccess,required TResult Function( String message)  otpResentSuccess,required TResult Function( String error)  error,required TResult Function( Map<String, List<String>> errors)  fieldErrors,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.message);case OtpVerifiedSuccess():
return otpVerifiedSuccess(_that.message);case OtpResentSuccess():
return otpResentSuccess(_that.message);case Error():
return error(_that.error);case FieldErrors():
return fieldErrors(_that.errors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  success,TResult? Function( String message)?  otpVerifiedSuccess,TResult? Function( String message)?  otpResentSuccess,TResult? Function( String error)?  error,TResult? Function( Map<String, List<String>> errors)?  fieldErrors,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.message);case OtpVerifiedSuccess() when otpVerifiedSuccess != null:
return otpVerifiedSuccess(_that.message);case OtpResentSuccess() when otpResentSuccess != null:
return otpResentSuccess(_that.message);case Error() when error != null:
return error(_that.error);case FieldErrors() when fieldErrors != null:
return fieldErrors(_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements AuthStates {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthStates.initial()';
}


}




/// @nodoc


class Loading implements AuthStates {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthStates.loading()';
}


}




/// @nodoc


class Success implements AuthStates {
  const Success(this.message);
  

 final  String message;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthStates.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $AuthStatesCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OtpVerifiedSuccess implements AuthStates {
  const OtpVerifiedSuccess(this.message);
  

 final  String message;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpVerifiedSuccessCopyWith<OtpVerifiedSuccess> get copyWith => _$OtpVerifiedSuccessCopyWithImpl<OtpVerifiedSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerifiedSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthStates.otpVerifiedSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $OtpVerifiedSuccessCopyWith<$Res> implements $AuthStatesCopyWith<$Res> {
  factory $OtpVerifiedSuccessCopyWith(OtpVerifiedSuccess value, $Res Function(OtpVerifiedSuccess) _then) = _$OtpVerifiedSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OtpVerifiedSuccessCopyWithImpl<$Res>
    implements $OtpVerifiedSuccessCopyWith<$Res> {
  _$OtpVerifiedSuccessCopyWithImpl(this._self, this._then);

  final OtpVerifiedSuccess _self;
  final $Res Function(OtpVerifiedSuccess) _then;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(OtpVerifiedSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OtpResentSuccess implements AuthStates {
  const OtpResentSuccess(this.message);
  

 final  String message;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpResentSuccessCopyWith<OtpResentSuccess> get copyWith => _$OtpResentSuccessCopyWithImpl<OtpResentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpResentSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthStates.otpResentSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $OtpResentSuccessCopyWith<$Res> implements $AuthStatesCopyWith<$Res> {
  factory $OtpResentSuccessCopyWith(OtpResentSuccess value, $Res Function(OtpResentSuccess) _then) = _$OtpResentSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OtpResentSuccessCopyWithImpl<$Res>
    implements $OtpResentSuccessCopyWith<$Res> {
  _$OtpResentSuccessCopyWithImpl(this._self, this._then);

  final OtpResentSuccess _self;
  final $Res Function(OtpResentSuccess) _then;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(OtpResentSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Error implements AuthStates {
  const Error(this.error);
  

 final  String error;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AuthStates.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $AuthStatesCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FieldErrors implements AuthStates {
  const FieldErrors(final  Map<String, List<String>> errors): _errors = errors;
  

 final  Map<String, List<String>> _errors;
 Map<String, List<String>> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldErrorsCopyWith<FieldErrors> get copyWith => _$FieldErrorsCopyWithImpl<FieldErrors>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldErrors&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AuthStates.fieldErrors(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $FieldErrorsCopyWith<$Res> implements $AuthStatesCopyWith<$Res> {
  factory $FieldErrorsCopyWith(FieldErrors value, $Res Function(FieldErrors) _then) = _$FieldErrorsCopyWithImpl;
@useResult
$Res call({
 Map<String, List<String>> errors
});




}
/// @nodoc
class _$FieldErrorsCopyWithImpl<$Res>
    implements $FieldErrorsCopyWith<$Res> {
  _$FieldErrorsCopyWithImpl(this._self, this._then);

  final FieldErrors _self;
  final $Res Function(FieldErrors) _then;

/// Create a copy of AuthStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(FieldErrors(
null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,
  ));
}


}

// dart format on
