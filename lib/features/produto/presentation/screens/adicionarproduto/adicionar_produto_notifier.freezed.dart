// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adicionar_produto_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdicionarProdutoState {

 String get nome; String get prazoValidade; String? get erroGeral; String? get erroNome; String? get erroPrazoValidade; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of AdicionarProdutoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdicionarProdutoStateCopyWith<AdicionarProdutoState> get copyWith => _$AdicionarProdutoStateCopyWithImpl<AdicionarProdutoState>(this as AdicionarProdutoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdicionarProdutoState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.prazoValidade, prazoValidade) || other.prazoValidade == prazoValidade)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroPrazoValidade, erroPrazoValidade) || other.erroPrazoValidade == erroPrazoValidade)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,prazoValidade,erroGeral,erroNome,erroPrazoValidade,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarProdutoState(nome: $nome, prazoValidade: $prazoValidade, erroGeral: $erroGeral, erroNome: $erroNome, erroPrazoValidade: $erroPrazoValidade, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AdicionarProdutoStateCopyWith<$Res>  {
  factory $AdicionarProdutoStateCopyWith(AdicionarProdutoState value, $Res Function(AdicionarProdutoState) _then) = _$AdicionarProdutoStateCopyWithImpl;
@useResult
$Res call({
 String nome, String prazoValidade, String? erroGeral, String? erroNome, String? erroPrazoValidade, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$AdicionarProdutoStateCopyWithImpl<$Res>
    implements $AdicionarProdutoStateCopyWith<$Res> {
  _$AdicionarProdutoStateCopyWithImpl(this._self, this._then);

  final AdicionarProdutoState _self;
  final $Res Function(AdicionarProdutoState) _then;

/// Create a copy of AdicionarProdutoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? prazoValidade = null,Object? erroGeral = freezed,Object? erroNome = freezed,Object? erroPrazoValidade = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,prazoValidade: null == prazoValidade ? _self.prazoValidade : prazoValidade // ignore: cast_nullable_to_non_nullable
as String,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroNome: freezed == erroNome ? _self.erroNome : erroNome // ignore: cast_nullable_to_non_nullable
as String?,erroPrazoValidade: freezed == erroPrazoValidade ? _self.erroPrazoValidade : erroPrazoValidade // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdicionarProdutoState].
extension AdicionarProdutoStatePatterns on AdicionarProdutoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdicionarProdutoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdicionarProdutoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdicionarProdutoState value)  $default,){
final _that = this;
switch (_that) {
case _AdicionarProdutoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdicionarProdutoState value)?  $default,){
final _that = this;
switch (_that) {
case _AdicionarProdutoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nome,  String prazoValidade,  String? erroGeral,  String? erroNome,  String? erroPrazoValidade,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdicionarProdutoState() when $default != null:
return $default(_that.nome,_that.prazoValidade,_that.erroGeral,_that.erroNome,_that.erroPrazoValidade,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nome,  String prazoValidade,  String? erroGeral,  String? erroNome,  String? erroPrazoValidade,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AdicionarProdutoState():
return $default(_that.nome,_that.prazoValidade,_that.erroGeral,_that.erroNome,_that.erroPrazoValidade,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nome,  String prazoValidade,  String? erroGeral,  String? erroNome,  String? erroPrazoValidade,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AdicionarProdutoState() when $default != null:
return $default(_that.nome,_that.prazoValidade,_that.erroGeral,_that.erroNome,_that.erroPrazoValidade,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AdicionarProdutoState implements AdicionarProdutoState {
  const _AdicionarProdutoState({this.nome = '', this.prazoValidade = '', this.erroGeral, this.erroNome, this.erroPrazoValidade, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String nome;
@override@JsonKey() final  String prazoValidade;
@override final  String? erroGeral;
@override final  String? erroNome;
@override final  String? erroPrazoValidade;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AdicionarProdutoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdicionarProdutoStateCopyWith<_AdicionarProdutoState> get copyWith => __$AdicionarProdutoStateCopyWithImpl<_AdicionarProdutoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdicionarProdutoState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.prazoValidade, prazoValidade) || other.prazoValidade == prazoValidade)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNome, erroNome) || other.erroNome == erroNome)&&(identical(other.erroPrazoValidade, erroPrazoValidade) || other.erroPrazoValidade == erroPrazoValidade)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,prazoValidade,erroGeral,erroNome,erroPrazoValidade,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarProdutoState(nome: $nome, prazoValidade: $prazoValidade, erroGeral: $erroGeral, erroNome: $erroNome, erroPrazoValidade: $erroPrazoValidade, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AdicionarProdutoStateCopyWith<$Res> implements $AdicionarProdutoStateCopyWith<$Res> {
  factory _$AdicionarProdutoStateCopyWith(_AdicionarProdutoState value, $Res Function(_AdicionarProdutoState) _then) = __$AdicionarProdutoStateCopyWithImpl;
@override @useResult
$Res call({
 String nome, String prazoValidade, String? erroGeral, String? erroNome, String? erroPrazoValidade, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$AdicionarProdutoStateCopyWithImpl<$Res>
    implements _$AdicionarProdutoStateCopyWith<$Res> {
  __$AdicionarProdutoStateCopyWithImpl(this._self, this._then);

  final _AdicionarProdutoState _self;
  final $Res Function(_AdicionarProdutoState) _then;

/// Create a copy of AdicionarProdutoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? prazoValidade = null,Object? erroGeral = freezed,Object? erroNome = freezed,Object? erroPrazoValidade = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_AdicionarProdutoState(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,prazoValidade: null == prazoValidade ? _self.prazoValidade : prazoValidade // ignore: cast_nullable_to_non_nullable
as String,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
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
