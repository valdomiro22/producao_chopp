// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editar_barril_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditarBarrilState {

 String get id; String get nome; String get volume; bool get isDescartavel; DateTime? get criadoEm; String? get erroGeral; String? get erroNome; String? get erroVolume; bool get isLoading; bool get isSuccess; bool get isCamposValidos;
/// Create a copy of EditarBarrilState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditarBarrilStateCopyWith<EditarBarrilState> get copyWith => _$EditarBarrilStateCopyWithImpl<EditarBarrilState>(this as EditarBarrilState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditarBarrilState&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.isDescartavel, isDescartavel) || other.isDescartavel == isDescartavel)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroVolume, erroVolume) || other.erroVolume == erroVolume)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,volume,isDescartavel,criadoEm,erroGeral,erroNome,erroVolume,isLoading,isSuccess,isCamposValidos);

@override
String toString() {
  return 'EditarBarrilState(id: $id, nome: $nome, volume: $volume, isDescartavel: $isDescartavel, criadoEm: $criadoEm, erroGeral: $erroGeral, erroNome: $erroNome, erroVolume: $erroVolume, isLoading: $isLoading, isSuccess: $isSuccess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class $EditarBarrilStateCopyWith<$Res>  {
  factory $EditarBarrilStateCopyWith(EditarBarrilState value, $Res Function(EditarBarrilState) _then) = _$EditarBarrilStateCopyWithImpl;
@useResult
$Res call({
 String id, String nome, String volume, bool isDescartavel, DateTime? criadoEm, String? erroGeral, String? erroNome, String? erroVolume, bool isLoading, bool isSuccess, bool isCamposValidos
});




}
/// @nodoc
class _$EditarBarrilStateCopyWithImpl<$Res>
    implements $EditarBarrilStateCopyWith<$Res> {
  _$EditarBarrilStateCopyWithImpl(this._self, this._then);

  final EditarBarrilState _self;
  final $Res Function(EditarBarrilState) _then;

/// Create a copy of EditarBarrilState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nome = null,Object? volume = null,Object? isDescartavel = null,Object? criadoEm = freezed,Object? erroGeral = freezed,Object? erroNome = freezed,Object? erroVolume = freezed,Object? isLoading = null,Object? isSuccess = null,Object? isCamposValidos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String,isDescartavel: null == isDescartavel ? _self.isDescartavel : isDescartavel // ignore: cast_nullable_to_non_nullable
as bool,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroVolume: freezed == erroVolume ? _self.erroVolume : erroVolume // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EditarBarrilState].
extension EditarBarrilStatePatterns on EditarBarrilState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditarBarrilState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditarBarrilState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditarBarrilState value)  $default,){
final _that = this;
switch (_that) {
case _EditarBarrilState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditarBarrilState value)?  $default,){
final _that = this;
switch (_that) {
case _EditarBarrilState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nome,  String volume,  bool isDescartavel,  DateTime? criadoEm,  String? erroGeral,  String? erroNome,  String? erroVolume,  bool isLoading,  bool isSuccess,  bool isCamposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditarBarrilState() when $default != null:
return $default(_that.id,_that.nome,_that.volume,_that.isDescartavel,_that.criadoEm,_that.erroGeral,_that.erroNome,_that.erroVolume,_that.isLoading,_that.isSuccess,_that.isCamposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nome,  String volume,  bool isDescartavel,  DateTime? criadoEm,  String? erroGeral,  String? erroNome,  String? erroVolume,  bool isLoading,  bool isSuccess,  bool isCamposValidos)  $default,) {final _that = this;
switch (_that) {
case _EditarBarrilState():
return $default(_that.id,_that.nome,_that.volume,_that.isDescartavel,_that.criadoEm,_that.erroGeral,_that.erroNome,_that.erroVolume,_that.isLoading,_that.isSuccess,_that.isCamposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nome,  String volume,  bool isDescartavel,  DateTime? criadoEm,  String? erroGeral,  String? erroNome,  String? erroVolume,  bool isLoading,  bool isSuccess,  bool isCamposValidos)?  $default,) {final _that = this;
switch (_that) {
case _EditarBarrilState() when $default != null:
return $default(_that.id,_that.nome,_that.volume,_that.isDescartavel,_that.criadoEm,_that.erroGeral,_that.erroNome,_that.erroVolume,_that.isLoading,_that.isSuccess,_that.isCamposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _EditarBarrilState implements EditarBarrilState {
  const _EditarBarrilState({this.id = '', this.nome = '', this.volume = '', this.isDescartavel = false, this.criadoEm, this.erroGeral, this.erroNome, this.erroVolume, this.isLoading = false, this.isSuccess = false, this.isCamposValidos = false});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String nome;
@override@JsonKey() final  String volume;
@override@JsonKey() final  bool isDescartavel;
@override final  DateTime? criadoEm;
@override final  String? erroGeral;
@override final  String? erroNome;
@override final  String? erroVolume;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool isCamposValidos;

/// Create a copy of EditarBarrilState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditarBarrilStateCopyWith<_EditarBarrilState> get copyWith => __$EditarBarrilStateCopyWithImpl<_EditarBarrilState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditarBarrilState&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.isDescartavel, isDescartavel) || other.isDescartavel == isDescartavel)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroVolume, erroVolume) || other.erroVolume == erroVolume)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,volume,isDescartavel,criadoEm,erroGeral,erroNome,erroVolume,isLoading,isSuccess,isCamposValidos);

@override
String toString() {
  return 'EditarBarrilState(id: $id, nome: $nome, volume: $volume, isDescartavel: $isDescartavel, criadoEm: $criadoEm, erroGeral: $erroGeral, erroNome: $erroNome, erroVolume: $erroVolume, isLoading: $isLoading, isSuccess: $isSuccess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class _$EditarBarrilStateCopyWith<$Res> implements $EditarBarrilStateCopyWith<$Res> {
  factory _$EditarBarrilStateCopyWith(_EditarBarrilState value, $Res Function(_EditarBarrilState) _then) = __$EditarBarrilStateCopyWithImpl;
@override @useResult
$Res call({
 String id, String nome, String volume, bool isDescartavel, DateTime? criadoEm, String? erroGeral, String? erroNome, String? erroVolume, bool isLoading, bool isSuccess, bool isCamposValidos
});




}
/// @nodoc
class __$EditarBarrilStateCopyWithImpl<$Res>
    implements _$EditarBarrilStateCopyWith<$Res> {
  __$EditarBarrilStateCopyWithImpl(this._self, this._then);

  final _EditarBarrilState _self;
  final $Res Function(_EditarBarrilState) _then;

/// Create a copy of EditarBarrilState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nome = null,Object? volume = null,Object? isDescartavel = null,Object? criadoEm = freezed,Object? erroGeral = freezed,Object? erroNome = freezed,Object? erroVolume = freezed,Object? isLoading = null,Object? isSuccess = null,Object? isCamposValidos = null,}) {
  return _then(_EditarBarrilState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String,isDescartavel: null == isDescartavel ? _self.isDescartavel : isDescartavel // ignore: cast_nullable_to_non_nullable
as bool,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroVolume: freezed == erroVolume ? _self.erroVolume : erroVolume // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
