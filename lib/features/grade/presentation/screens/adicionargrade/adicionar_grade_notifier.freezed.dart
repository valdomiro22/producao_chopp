// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adicionar_grade_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdicionarGradeState {

 String get numero; DateTime? get data; String? get erroGeral; String? get erroNumero; String? get erroData; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of AdicionarGradeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdicionarGradeStateCopyWith<AdicionarGradeState> get copyWith => _$AdicionarGradeStateCopyWithImpl<AdicionarGradeState>(this as AdicionarGradeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdicionarGradeState&&(identical(other.numero, numero) || other.numero == numero)&&(identical(other.data, data) || other.data == data)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNumero, erroNumero) || other.erroNumero == erroNumero)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,numero,data,erroGeral,erroNumero,erroData,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarGradeState(numero: $numero, data: $data, erroGeral: $erroGeral, erroNumero: $erroNumero, erroData: $erroData, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AdicionarGradeStateCopyWith<$Res>  {
  factory $AdicionarGradeStateCopyWith(AdicionarGradeState value, $Res Function(AdicionarGradeState) _then) = _$AdicionarGradeStateCopyWithImpl;
@useResult
$Res call({
 String numero, DateTime? data, String? erroGeral, String? erroNumero, String? erroData, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$AdicionarGradeStateCopyWithImpl<$Res>
    implements $AdicionarGradeStateCopyWith<$Res> {
  _$AdicionarGradeStateCopyWithImpl(this._self, this._then);

  final AdicionarGradeState _self;
  final $Res Function(AdicionarGradeState) _then;

/// Create a copy of AdicionarGradeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numero = null,Object? data = freezed,Object? erroGeral = freezed,Object? erroNumero = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
numero: null == numero ? _self.numero : numero // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroNumero: freezed == erroNumero ? _self.erroNumero : erroNumero // ignore: cast_nullable_to_non_nullable
as String?,erroData: freezed == erroData ? _self.erroData : erroData // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdicionarGradeState].
extension AdicionarGradeStatePatterns on AdicionarGradeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdicionarGradeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdicionarGradeState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdicionarGradeState value)  $default,){
final _that = this;
switch (_that) {
case _AdicionarGradeState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdicionarGradeState value)?  $default,){
final _that = this;
switch (_that) {
case _AdicionarGradeState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String numero,  DateTime? data,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdicionarGradeState() when $default != null:
return $default(_that.numero,_that.data,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String numero,  DateTime? data,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AdicionarGradeState():
return $default(_that.numero,_that.data,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String numero,  DateTime? data,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AdicionarGradeState() when $default != null:
return $default(_that.numero,_that.data,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AdicionarGradeState implements AdicionarGradeState {
  const _AdicionarGradeState({this.numero = '', this.data, this.erroGeral, this.erroNumero, this.erroData, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String numero;
@override final  DateTime? data;
@override final  String? erroGeral;
@override final  String? erroNumero;
@override final  String? erroData;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AdicionarGradeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdicionarGradeStateCopyWith<_AdicionarGradeState> get copyWith => __$AdicionarGradeStateCopyWithImpl<_AdicionarGradeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdicionarGradeState&&(identical(other.numero, numero) || other.numero == numero)&&(identical(other.data, data) || other.data == data)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNumero, erroNumero) || other.erroNumero == erroNumero)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,numero,data,erroGeral,erroNumero,erroData,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarGradeState(numero: $numero, data: $data, erroGeral: $erroGeral, erroNumero: $erroNumero, erroData: $erroData, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AdicionarGradeStateCopyWith<$Res> implements $AdicionarGradeStateCopyWith<$Res> {
  factory _$AdicionarGradeStateCopyWith(_AdicionarGradeState value, $Res Function(_AdicionarGradeState) _then) = __$AdicionarGradeStateCopyWithImpl;
@override @useResult
$Res call({
 String numero, DateTime? data, String? erroGeral, String? erroNumero, String? erroData, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$AdicionarGradeStateCopyWithImpl<$Res>
    implements _$AdicionarGradeStateCopyWith<$Res> {
  __$AdicionarGradeStateCopyWithImpl(this._self, this._then);

  final _AdicionarGradeState _self;
  final $Res Function(_AdicionarGradeState) _then;

/// Create a copy of AdicionarGradeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numero = null,Object? data = freezed,Object? erroGeral = freezed,Object? erroNumero = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_AdicionarGradeState(
numero: null == numero ? _self.numero : numero // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroNumero: freezed == erroNumero ? _self.erroNumero : erroNumero // ignore: cast_nullable_to_non_nullable
as String?,erroData: freezed == erroData ? _self.erroData : erroData // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
