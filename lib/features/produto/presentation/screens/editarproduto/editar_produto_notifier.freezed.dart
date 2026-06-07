// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editar_produto_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditarProdutoState {

 String get id; String get nome; String get prazoValidade; DateTime? get criadoEm; String? get erroGeral; String? get erroNome; String? get erroPrazoValidade; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of EditarProdutoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditarProdutoStateCopyWith<EditarProdutoState> get copyWith => _$EditarProdutoStateCopyWithImpl<EditarProdutoState>(this as EditarProdutoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditarProdutoState&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.prazoValidade, prazoValidade) || other.prazoValidade == prazoValidade)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroPrazoValidade, erroPrazoValidade) || other.erroPrazoValidade == erroPrazoValidade)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,prazoValidade,criadoEm,erroGeral,erroNome,erroPrazoValidade,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'EditarProdutoState(id: $id, nome: $nome, prazoValidade: $prazoValidade, criadoEm: $criadoEm, erroGeral: $erroGeral, erroNome: $erroNome, erroPrazoValidade: $erroPrazoValidade, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $EditarProdutoStateCopyWith<$Res>  {
  factory $EditarProdutoStateCopyWith(EditarProdutoState value, $Res Function(EditarProdutoState) _then) = _$EditarProdutoStateCopyWithImpl;
@useResult
$Res call({
 String id, String nome, String prazoValidade, DateTime? criadoEm, String? erroGeral, String? erroNome, String? erroPrazoValidade, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$EditarProdutoStateCopyWithImpl<$Res>
    implements $EditarProdutoStateCopyWith<$Res> {
  _$EditarProdutoStateCopyWithImpl(this._self, this._then);

  final EditarProdutoState _self;
  final $Res Function(EditarProdutoState) _then;

/// Create a copy of EditarProdutoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nome = null,Object? prazoValidade = null,Object? criadoEm = freezed,Object? erroGeral = freezed,Object? erroNome = freezed,Object? erroPrazoValidade = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,prazoValidade: null == prazoValidade ? _self.prazoValidade : prazoValidade // ignore: cast_nullable_to_non_nullable
as String,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroPrazoValidade: freezed == erroPrazoValidade ? _self.erroPrazoValidade : erroPrazoValidade // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EditarProdutoState].
extension EditarProdutoStatePatterns on EditarProdutoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditarProdutoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditarProdutoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditarProdutoState value)  $default,){
final _that = this;
switch (_that) {
case _EditarProdutoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditarProdutoState value)?  $default,){
final _that = this;
switch (_that) {
case _EditarProdutoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nome,  String prazoValidade,  DateTime? criadoEm,  String? erroGeral,  String? erroNome,  String? erroPrazoValidade,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditarProdutoState() when $default != null:
return $default(_that.id,_that.nome,_that.prazoValidade,_that.criadoEm,_that.erroGeral,_that.erroNome,_that.erroPrazoValidade,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nome,  String prazoValidade,  DateTime? criadoEm,  String? erroGeral,  String? erroNome,  String? erroPrazoValidade,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _EditarProdutoState():
return $default(_that.id,_that.nome,_that.prazoValidade,_that.criadoEm,_that.erroGeral,_that.erroNome,_that.erroPrazoValidade,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nome,  String prazoValidade,  DateTime? criadoEm,  String? erroGeral,  String? erroNome,  String? erroPrazoValidade,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _EditarProdutoState() when $default != null:
return $default(_that.id,_that.nome,_that.prazoValidade,_that.criadoEm,_that.erroGeral,_that.erroNome,_that.erroPrazoValidade,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _EditarProdutoState implements EditarProdutoState {
  const _EditarProdutoState({this.id = '', this.nome = '', this.prazoValidade = '', this.criadoEm, this.erroGeral, this.erroNome, this.erroPrazoValidade, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String nome;
@override@JsonKey() final  String prazoValidade;
@override final  DateTime? criadoEm;
@override final  String? erroGeral;
@override final  String? erroNome;
@override final  String? erroPrazoValidade;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of EditarProdutoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditarProdutoStateCopyWith<_EditarProdutoState> get copyWith => __$EditarProdutoStateCopyWithImpl<_EditarProdutoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditarProdutoState&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.prazoValidade, prazoValidade) || other.prazoValidade == prazoValidade)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroPrazoValidade, erroPrazoValidade) || other.erroPrazoValidade == erroPrazoValidade)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,prazoValidade,criadoEm,erroGeral,erroNome,erroPrazoValidade,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'EditarProdutoState(id: $id, nome: $nome, prazoValidade: $prazoValidade, criadoEm: $criadoEm, erroGeral: $erroGeral, erroNome: $erroNome, erroPrazoValidade: $erroPrazoValidade, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$EditarProdutoStateCopyWith<$Res> implements $EditarProdutoStateCopyWith<$Res> {
  factory _$EditarProdutoStateCopyWith(_EditarProdutoState value, $Res Function(_EditarProdutoState) _then) = __$EditarProdutoStateCopyWithImpl;
@override @useResult
$Res call({
 String id, String nome, String prazoValidade, DateTime? criadoEm, String? erroGeral, String? erroNome, String? erroPrazoValidade, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$EditarProdutoStateCopyWithImpl<$Res>
    implements _$EditarProdutoStateCopyWith<$Res> {
  __$EditarProdutoStateCopyWithImpl(this._self, this._then);

  final _EditarProdutoState _self;
  final $Res Function(_EditarProdutoState) _then;

/// Create a copy of EditarProdutoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nome = null,Object? prazoValidade = null,Object? criadoEm = freezed,Object? erroGeral = freezed,Object? erroNome = freezed,Object? erroPrazoValidade = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_EditarProdutoState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,prazoValidade: null == prazoValidade ? _self.prazoValidade : prazoValidade // ignore: cast_nullable_to_non_nullable
as String,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroPrazoValidade: freezed == erroPrazoValidade ? _self.erroPrazoValidade : erroPrazoValidade // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
