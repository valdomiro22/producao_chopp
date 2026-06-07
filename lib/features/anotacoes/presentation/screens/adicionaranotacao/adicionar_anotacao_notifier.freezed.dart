// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adicionar_anotacao_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdicionarAnotacaoState {

 String get quantidade; Turno get turno; bool get isDescartavel; String? get erroGeral; String? get erroQuantidade; String? get erroTurno; bool get isLoading; bool get isSuccess; bool get isCamposValidos;
/// Create a copy of AdicionarAnotacaoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdicionarAnotacaoStateCopyWith<AdicionarAnotacaoState> get copyWith => _$AdicionarAnotacaoStateCopyWithImpl<AdicionarAnotacaoState>(this as AdicionarAnotacaoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdicionarAnotacaoState&&(identical(other.quantidade, quantidade) || other.quantidade == quantidade)&&(identical(other.turno, turno) || other.turno == turno)&&(identical(other.isDescartavel, isDescartavel) || other.isDescartavel == isDescartavel)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroQuantidade, erroQuantidade) || other.erroQuantidade == erroQuantidade)&&(identical(other.erroTurno, erroTurno) || other.erroTurno == erroTurno)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,quantidade,turno,isDescartavel,erroGeral,erroQuantidade,erroTurno,isLoading,isSuccess,isCamposValidos);

@override
String toString() {
  return 'AdicionarAnotacaoState(quantidade: $quantidade, turno: $turno, isDescartavel: $isDescartavel, erroGeral: $erroGeral, erroQuantidade: $erroQuantidade, erroTurno: $erroTurno, isLoading: $isLoading, isSuccess: $isSuccess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class $AdicionarAnotacaoStateCopyWith<$Res>  {
  factory $AdicionarAnotacaoStateCopyWith(AdicionarAnotacaoState value, $Res Function(AdicionarAnotacaoState) _then) = _$AdicionarAnotacaoStateCopyWithImpl;
@useResult
$Res call({
 String quantidade, Turno turno, bool isDescartavel, String? erroGeral, String? erroQuantidade, String? erroTurno, bool isLoading, bool isSuccess, bool isCamposValidos
});




}
/// @nodoc
class _$AdicionarAnotacaoStateCopyWithImpl<$Res>
    implements $AdicionarAnotacaoStateCopyWith<$Res> {
  _$AdicionarAnotacaoStateCopyWithImpl(this._self, this._then);

  final AdicionarAnotacaoState _self;
  final $Res Function(AdicionarAnotacaoState) _then;

/// Create a copy of AdicionarAnotacaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantidade = null,Object? turno = null,Object? isDescartavel = null,Object? erroGeral = freezed,Object? erroQuantidade = freezed,Object? erroTurno = freezed,Object? isLoading = null,Object? isSuccess = null,Object? isCamposValidos = null,}) {
  return _then(_self.copyWith(
quantidade: null == quantidade ? _self.quantidade : quantidade // ignore: cast_nullable_to_non_nullable
as String,turno: null == turno ? _self.turno : turno // ignore: cast_nullable_to_non_nullable
as Turno,isDescartavel: null == isDescartavel ? _self.isDescartavel : isDescartavel // ignore: cast_nullable_to_non_nullable
as bool,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroQuantidade: freezed == erroQuantidade ? _self.erroQuantidade : erroQuantidade // ignore: cast_nullable_to_non_nullable
as String?,erroTurno: freezed == erroTurno ? _self.erroTurno : erroTurno // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdicionarAnotacaoState].
extension AdicionarAnotacaoStatePatterns on AdicionarAnotacaoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdicionarAnotacaoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdicionarAnotacaoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdicionarAnotacaoState value)  $default,){
final _that = this;
switch (_that) {
case _AdicionarAnotacaoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdicionarAnotacaoState value)?  $default,){
final _that = this;
switch (_that) {
case _AdicionarAnotacaoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String quantidade,  Turno turno,  bool isDescartavel,  String? erroGeral,  String? erroQuantidade,  String? erroTurno,  bool isLoading,  bool isSuccess,  bool isCamposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdicionarAnotacaoState() when $default != null:
return $default(_that.quantidade,_that.turno,_that.isDescartavel,_that.erroGeral,_that.erroQuantidade,_that.erroTurno,_that.isLoading,_that.isSuccess,_that.isCamposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String quantidade,  Turno turno,  bool isDescartavel,  String? erroGeral,  String? erroQuantidade,  String? erroTurno,  bool isLoading,  bool isSuccess,  bool isCamposValidos)  $default,) {final _that = this;
switch (_that) {
case _AdicionarAnotacaoState():
return $default(_that.quantidade,_that.turno,_that.isDescartavel,_that.erroGeral,_that.erroQuantidade,_that.erroTurno,_that.isLoading,_that.isSuccess,_that.isCamposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String quantidade,  Turno turno,  bool isDescartavel,  String? erroGeral,  String? erroQuantidade,  String? erroTurno,  bool isLoading,  bool isSuccess,  bool isCamposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AdicionarAnotacaoState() when $default != null:
return $default(_that.quantidade,_that.turno,_that.isDescartavel,_that.erroGeral,_that.erroQuantidade,_that.erroTurno,_that.isLoading,_that.isSuccess,_that.isCamposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AdicionarAnotacaoState implements AdicionarAnotacaoState {
  const _AdicionarAnotacaoState({this.quantidade = '', this.turno = Turno.turnoA, this.isDescartavel = false, this.erroGeral, this.erroQuantidade, this.erroTurno, this.isLoading = false, this.isSuccess = false, this.isCamposValidos = false});
  

@override@JsonKey() final  String quantidade;
@override@JsonKey() final  Turno turno;
@override@JsonKey() final  bool isDescartavel;
@override final  String? erroGeral;
@override final  String? erroQuantidade;
@override final  String? erroTurno;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool isCamposValidos;

/// Create a copy of AdicionarAnotacaoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdicionarAnotacaoStateCopyWith<_AdicionarAnotacaoState> get copyWith => __$AdicionarAnotacaoStateCopyWithImpl<_AdicionarAnotacaoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdicionarAnotacaoState&&(identical(other.quantidade, quantidade) || other.quantidade == quantidade)&&(identical(other.turno, turno) || other.turno == turno)&&(identical(other.isDescartavel, isDescartavel) || other.isDescartavel == isDescartavel)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroQuantidade, erroQuantidade) || other.erroQuantidade == erroQuantidade)&&(identical(other.erroTurno, erroTurno) || other.erroTurno == erroTurno)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isCamposValidos, isCamposValidos) || other.isCamposValidos == isCamposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,quantidade,turno,isDescartavel,erroGeral,erroQuantidade,erroTurno,isLoading,isSuccess,isCamposValidos);

@override
String toString() {
  return 'AdicionarAnotacaoState(quantidade: $quantidade, turno: $turno, isDescartavel: $isDescartavel, erroGeral: $erroGeral, erroQuantidade: $erroQuantidade, erroTurno: $erroTurno, isLoading: $isLoading, isSuccess: $isSuccess, isCamposValidos: $isCamposValidos)';
}


}

/// @nodoc
abstract mixin class _$AdicionarAnotacaoStateCopyWith<$Res> implements $AdicionarAnotacaoStateCopyWith<$Res> {
  factory _$AdicionarAnotacaoStateCopyWith(_AdicionarAnotacaoState value, $Res Function(_AdicionarAnotacaoState) _then) = __$AdicionarAnotacaoStateCopyWithImpl;
@override @useResult
$Res call({
 String quantidade, Turno turno, bool isDescartavel, String? erroGeral, String? erroQuantidade, String? erroTurno, bool isLoading, bool isSuccess, bool isCamposValidos
});




}
/// @nodoc
class __$AdicionarAnotacaoStateCopyWithImpl<$Res>
    implements _$AdicionarAnotacaoStateCopyWith<$Res> {
  __$AdicionarAnotacaoStateCopyWithImpl(this._self, this._then);

  final _AdicionarAnotacaoState _self;
  final $Res Function(_AdicionarAnotacaoState) _then;

/// Create a copy of AdicionarAnotacaoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantidade = null,Object? turno = null,Object? isDescartavel = null,Object? erroGeral = freezed,Object? erroQuantidade = freezed,Object? erroTurno = freezed,Object? isLoading = null,Object? isSuccess = null,Object? isCamposValidos = null,}) {
  return _then(_AdicionarAnotacaoState(
quantidade: null == quantidade ? _self.quantidade : quantidade // ignore: cast_nullable_to_non_nullable
as String,turno: null == turno ? _self.turno : turno // ignore: cast_nullable_to_non_nullable
as Turno,isDescartavel: null == isDescartavel ? _self.isDescartavel : isDescartavel // ignore: cast_nullable_to_non_nullable
as bool,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroQuantidade: freezed == erroQuantidade ? _self.erroQuantidade : erroQuantidade // ignore: cast_nullable_to_non_nullable
as String?,erroTurno: freezed == erroTurno ? _self.erroTurno : erroTurno // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isCamposValidos: null == isCamposValidos ? _self.isCamposValidos : isCamposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
