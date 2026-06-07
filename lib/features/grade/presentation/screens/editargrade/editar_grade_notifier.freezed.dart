// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editar_grade_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditarGradeState {

 String get id; String get numero; DateTime? get data; DateTime? get criadoEm; String? get erroGeral; String? get erroNumero; String? get erroData; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of EditarGradeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditarGradeStateCopyWith<EditarGradeState> get copyWith => _$EditarGradeStateCopyWithImpl<EditarGradeState>(this as EditarGradeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditarGradeState&&(identical(other.id, id) || other.id == id)&&(identical(other.numero, numero) || other.numero == numero)&&(identical(other.data, data) || other.data == data)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNumero, erroNumero) || other.erroNumero == erroNumero)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,numero,data,criadoEm,erroGeral,erroNumero,erroData,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'EditarGradeState(id: $id, numero: $numero, data: $data, criadoEm: $criadoEm, erroGeral: $erroGeral, erroNumero: $erroNumero, erroData: $erroData, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $EditarGradeStateCopyWith<$Res>  {
  factory $EditarGradeStateCopyWith(EditarGradeState value, $Res Function(EditarGradeState) _then) = _$EditarGradeStateCopyWithImpl;
@useResult
$Res call({
 String id, String numero, DateTime? data, DateTime? criadoEm, String? erroGeral, String? erroNumero, String? erroData, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$EditarGradeStateCopyWithImpl<$Res>
    implements $EditarGradeStateCopyWith<$Res> {
  _$EditarGradeStateCopyWithImpl(this._self, this._then);

  final EditarGradeState _self;
  final $Res Function(EditarGradeState) _then;

/// Create a copy of EditarGradeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? numero = null,Object? data = freezed,Object? criadoEm = freezed,Object? erroGeral = freezed,Object? erroNumero = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,numero: null == numero ? _self.numero : numero // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [EditarGradeState].
extension EditarGradeStatePatterns on EditarGradeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditarGradeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditarGradeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditarGradeState value)  $default,){
final _that = this;
switch (_that) {
case _EditarGradeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditarGradeState value)?  $default,){
final _that = this;
switch (_that) {
case _EditarGradeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String numero,  DateTime? data,  DateTime? criadoEm,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditarGradeState() when $default != null:
return $default(_that.id,_that.numero,_that.data,_that.criadoEm,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String numero,  DateTime? data,  DateTime? criadoEm,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _EditarGradeState():
return $default(_that.id,_that.numero,_that.data,_that.criadoEm,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String numero,  DateTime? data,  DateTime? criadoEm,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _EditarGradeState() when $default != null:
return $default(_that.id,_that.numero,_that.data,_that.criadoEm,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _EditarGradeState implements EditarGradeState {
  const _EditarGradeState({this.id = '', this.numero = '', this.data, this.criadoEm, this.erroGeral, this.erroNumero, this.erroData, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String numero;
@override final  DateTime? data;
@override final  DateTime? criadoEm;
@override final  String? erroGeral;
@override final  String? erroNumero;
@override final  String? erroData;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of EditarGradeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditarGradeStateCopyWith<_EditarGradeState> get copyWith => __$EditarGradeStateCopyWithImpl<_EditarGradeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditarGradeState&&(identical(other.id, id) || other.id == id)&&(identical(other.numero, numero) || other.numero == numero)&&(identical(other.data, data) || other.data == data)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNumero, erroNumero) || other.erroNumero == erroNumero)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,numero,data,criadoEm,erroGeral,erroNumero,erroData,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'EditarGradeState(id: $id, numero: $numero, data: $data, criadoEm: $criadoEm, erroGeral: $erroGeral, erroNumero: $erroNumero, erroData: $erroData, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$EditarGradeStateCopyWith<$Res> implements $EditarGradeStateCopyWith<$Res> {
  factory _$EditarGradeStateCopyWith(_EditarGradeState value, $Res Function(_EditarGradeState) _then) = __$EditarGradeStateCopyWithImpl;
@override @useResult
$Res call({
 String id, String numero, DateTime? data, DateTime? criadoEm, String? erroGeral, String? erroNumero, String? erroData, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$EditarGradeStateCopyWithImpl<$Res>
    implements _$EditarGradeStateCopyWith<$Res> {
  __$EditarGradeStateCopyWithImpl(this._self, this._then);

  final _EditarGradeState _self;
  final $Res Function(_EditarGradeState) _then;

/// Create a copy of EditarGradeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? numero = null,Object? data = freezed,Object? criadoEm = freezed,Object? erroGeral = freezed,Object? erroNumero = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_EditarGradeState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,numero: null == numero ? _self.numero : numero // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
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
