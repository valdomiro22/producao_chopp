// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editar_producao_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditarProducaoState {

 String get id; String get numero; String get quantidadeProgramada; String get quantidadeProduzida; String get barrilId; String get volumeBarril; String get produtoId; String get gradeId; StatusProducao get status; DateTime? get data; DateTime? get criadoEm; String? get erroQtProgramada; String? get erroQtProduzida; String? get erroBarrilId; String? get erroVolumeBarril; String? get erroProdutoId; String? get erroGradeId; String? get erroGeral; String? get erroNumero; String? get erroData; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of EditarProducaoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditarProducaoStateCopyWith<EditarProducaoState> get copyWith => _$EditarProducaoStateCopyWithImpl<EditarProducaoState>(this as EditarProducaoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditarProducaoState&&(identical(other.id, id) || other.id == id)&&(identical(other.numero, numero) || other.numero == numero)&&(identical(other.quantidadeProgramada, quantidadeProgramada) || other.quantidadeProgramada == quantidadeProgramada)&&(identical(other.quantidadeProduzida, quantidadeProduzida) || other.quantidadeProduzida == quantidadeProduzida)&&(identical(other.barrilId, barrilId) || other.barrilId == barrilId)&&(identical(other.volumeBarril, volumeBarril) || other.volumeBarril == volumeBarril)&&(identical(other.produtoId, produtoId) || other.produtoId == produtoId)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.erroQtProgramada, erroQtProgramada) || other.erroQtProgramada == erroQtProgramada)&&(identical(other.erroQtProduzida, erroQtProduzida) || other.erroQtProduzida == erroQtProduzida)&&(identical(other.erroBarrilId, erroBarrilId) || other.erroBarrilId == erroBarrilId)&&(identical(other.erroVolumeBarril, erroVolumeBarril) || other.erroVolumeBarril == erroVolumeBarril)&&(identical(other.erroProdutoId, erroProdutoId) || other.erroProdutoId == erroProdutoId)&&(identical(other.erroGradeId, erroGradeId) || other.erroGradeId == erroGradeId)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNumero, erroNumero) || other.erroNumero == erroNumero)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,numero,quantidadeProgramada,quantidadeProduzida,barrilId,volumeBarril,produtoId,gradeId,status,data,criadoEm,erroQtProgramada,erroQtProduzida,erroBarrilId,erroVolumeBarril,erroProdutoId,erroGradeId,erroGeral,erroNumero,erroData,isLoading,isSuccess,camposValidos]);

@override
String toString() {
  return 'EditarProducaoState(id: $id, numero: $numero, quantidadeProgramada: $quantidadeProgramada, quantidadeProduzida: $quantidadeProduzida, barrilId: $barrilId, volumeBarril: $volumeBarril, produtoId: $produtoId, gradeId: $gradeId, status: $status, data: $data, criadoEm: $criadoEm, erroQtProgramada: $erroQtProgramada, erroQtProduzida: $erroQtProduzida, erroBarrilId: $erroBarrilId, erroVolumeBarril: $erroVolumeBarril, erroProdutoId: $erroProdutoId, erroGradeId: $erroGradeId, erroGeral: $erroGeral, erroNumero: $erroNumero, erroData: $erroData, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $EditarProducaoStateCopyWith<$Res>  {
  factory $EditarProducaoStateCopyWith(EditarProducaoState value, $Res Function(EditarProducaoState) _then) = _$EditarProducaoStateCopyWithImpl;
@useResult
$Res call({
 String id, String numero, String quantidadeProgramada, String quantidadeProduzida, String barrilId, String volumeBarril, String produtoId, String gradeId, StatusProducao status, DateTime? data, DateTime? criadoEm, String? erroQtProgramada, String? erroQtProduzida, String? erroBarrilId, String? erroVolumeBarril, String? erroProdutoId, String? erroGradeId, String? erroGeral, String? erroNumero, String? erroData, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$EditarProducaoStateCopyWithImpl<$Res>
    implements $EditarProducaoStateCopyWith<$Res> {
  _$EditarProducaoStateCopyWithImpl(this._self, this._then);

  final EditarProducaoState _self;
  final $Res Function(EditarProducaoState) _then;

/// Create a copy of EditarProducaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? numero = null,Object? quantidadeProgramada = null,Object? quantidadeProduzida = null,Object? barrilId = null,Object? volumeBarril = null,Object? produtoId = null,Object? gradeId = null,Object? status = null,Object? data = freezed,Object? criadoEm = freezed,Object? erroQtProgramada = freezed,Object? erroQtProduzida = freezed,Object? erroBarrilId = freezed,Object? erroVolumeBarril = freezed,Object? erroProdutoId = freezed,Object? erroGradeId = freezed,Object? erroGeral = freezed,Object? erroNumero = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,numero: null == numero ? _self.numero : numero // ignore: cast_nullable_to_non_nullable
as String,quantidadeProgramada: null == quantidadeProgramada ? _self.quantidadeProgramada : quantidadeProgramada // ignore: cast_nullable_to_non_nullable
as String,quantidadeProduzida: null == quantidadeProduzida ? _self.quantidadeProduzida : quantidadeProduzida // ignore: cast_nullable_to_non_nullable
as String,barrilId: null == barrilId ? _self.barrilId : barrilId // ignore: cast_nullable_to_non_nullable
as String,volumeBarril: null == volumeBarril ? _self.volumeBarril : volumeBarril // ignore: cast_nullable_to_non_nullable
as String,produtoId: null == produtoId ? _self.produtoId : produtoId // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusProducao,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,erroQtProgramada: freezed == erroQtProgramada ? _self.erroQtProgramada : erroQtProgramada // ignore: cast_nullable_to_non_nullable
as String?,erroQtProduzida: freezed == erroQtProduzida ? _self.erroQtProduzida : erroQtProduzida // ignore: cast_nullable_to_non_nullable
as String?,erroBarrilId: freezed == erroBarrilId ? _self.erroBarrilId : erroBarrilId // ignore: cast_nullable_to_non_nullable
as String?,erroVolumeBarril: freezed == erroVolumeBarril ? _self.erroVolumeBarril : erroVolumeBarril // ignore: cast_nullable_to_non_nullable
as String?,erroProdutoId: freezed == erroProdutoId ? _self.erroProdutoId : erroProdutoId // ignore: cast_nullable_to_non_nullable
as String?,erroGradeId: freezed == erroGradeId ? _self.erroGradeId : erroGradeId // ignore: cast_nullable_to_non_nullable
as String?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
as String?,erroNumero: freezed == erroNumero ? _self.erroNumero : erroNumero // ignore: cast_nullable_to_non_nullable
as String?,erroData: freezed == erroData ? _self.erroData : erroData // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EditarProducaoState].
extension EditarProducaoStatePatterns on EditarProducaoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditarProducaoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditarProducaoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditarProducaoState value)  $default,){
final _that = this;
switch (_that) {
case _EditarProducaoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditarProducaoState value)?  $default,){
final _that = this;
switch (_that) {
case _EditarProducaoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String numero,  String quantidadeProgramada,  String quantidadeProduzida,  String barrilId,  String volumeBarril,  String produtoId,  String gradeId,  StatusProducao status,  DateTime? data,  DateTime? criadoEm,  String? erroQtProgramada,  String? erroQtProduzida,  String? erroBarrilId,  String? erroVolumeBarril,  String? erroProdutoId,  String? erroGradeId,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditarProducaoState() when $default != null:
return $default(_that.id,_that.numero,_that.quantidadeProgramada,_that.quantidadeProduzida,_that.barrilId,_that.volumeBarril,_that.produtoId,_that.gradeId,_that.status,_that.data,_that.criadoEm,_that.erroQtProgramada,_that.erroQtProduzida,_that.erroBarrilId,_that.erroVolumeBarril,_that.erroProdutoId,_that.erroGradeId,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String numero,  String quantidadeProgramada,  String quantidadeProduzida,  String barrilId,  String volumeBarril,  String produtoId,  String gradeId,  StatusProducao status,  DateTime? data,  DateTime? criadoEm,  String? erroQtProgramada,  String? erroQtProduzida,  String? erroBarrilId,  String? erroVolumeBarril,  String? erroProdutoId,  String? erroGradeId,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _EditarProducaoState():
return $default(_that.id,_that.numero,_that.quantidadeProgramada,_that.quantidadeProduzida,_that.barrilId,_that.volumeBarril,_that.produtoId,_that.gradeId,_that.status,_that.data,_that.criadoEm,_that.erroQtProgramada,_that.erroQtProduzida,_that.erroBarrilId,_that.erroVolumeBarril,_that.erroProdutoId,_that.erroGradeId,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String numero,  String quantidadeProgramada,  String quantidadeProduzida,  String barrilId,  String volumeBarril,  String produtoId,  String gradeId,  StatusProducao status,  DateTime? data,  DateTime? criadoEm,  String? erroQtProgramada,  String? erroQtProduzida,  String? erroBarrilId,  String? erroVolumeBarril,  String? erroProdutoId,  String? erroGradeId,  String? erroGeral,  String? erroNumero,  String? erroData,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _EditarProducaoState() when $default != null:
return $default(_that.id,_that.numero,_that.quantidadeProgramada,_that.quantidadeProduzida,_that.barrilId,_that.volumeBarril,_that.produtoId,_that.gradeId,_that.status,_that.data,_that.criadoEm,_that.erroQtProgramada,_that.erroQtProduzida,_that.erroBarrilId,_that.erroVolumeBarril,_that.erroProdutoId,_that.erroGradeId,_that.erroGeral,_that.erroNumero,_that.erroData,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _EditarProducaoState implements EditarProducaoState {
  const _EditarProducaoState({this.id = '', this.numero = '', this.quantidadeProgramada = '', this.quantidadeProduzida = '', this.barrilId = '', this.volumeBarril = '', this.produtoId = '', this.gradeId = '', this.status = StatusProducao.pendente, this.data, this.criadoEm, this.erroQtProgramada, this.erroQtProduzida, this.erroBarrilId, this.erroVolumeBarril, this.erroProdutoId, this.erroGradeId, this.erroGeral, this.erroNumero, this.erroData, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String numero;
@override@JsonKey() final  String quantidadeProgramada;
@override@JsonKey() final  String quantidadeProduzida;
@override@JsonKey() final  String barrilId;
@override@JsonKey() final  String volumeBarril;
@override@JsonKey() final  String produtoId;
@override@JsonKey() final  String gradeId;
@override@JsonKey() final  StatusProducao status;
@override final  DateTime? data;
@override final  DateTime? criadoEm;
@override final  String? erroQtProgramada;
@override final  String? erroQtProduzida;
@override final  String? erroBarrilId;
@override final  String? erroVolumeBarril;
@override final  String? erroProdutoId;
@override final  String? erroGradeId;
@override final  String? erroGeral;
@override final  String? erroNumero;
@override final  String? erroData;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of EditarProducaoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditarProducaoStateCopyWith<_EditarProducaoState> get copyWith => __$EditarProducaoStateCopyWithImpl<_EditarProducaoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditarProducaoState&&(identical(other.id, id) || other.id == id)&&(identical(other.numero, numero) || other.numero == numero)&&(identical(other.quantidadeProgramada, quantidadeProgramada) || other.quantidadeProgramada == quantidadeProgramada)&&(identical(other.quantidadeProduzida, quantidadeProduzida) || other.quantidadeProduzida == quantidadeProduzida)&&(identical(other.barrilId, barrilId) || other.barrilId == barrilId)&&(identical(other.volumeBarril, volumeBarril) || other.volumeBarril == volumeBarril)&&(identical(other.produtoId, produtoId) || other.produtoId == produtoId)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.erroQtProgramada, erroQtProgramada) || other.erroQtProgramada == erroQtProgramada)&&(identical(other.erroQtProduzida, erroQtProduzida) || other.erroQtProduzida == erroQtProduzida)&&(identical(other.erroBarrilId, erroBarrilId) || other.erroBarrilId == erroBarrilId)&&(identical(other.erroVolumeBarril, erroVolumeBarril) || other.erroVolumeBarril == erroVolumeBarril)&&(identical(other.erroProdutoId, erroProdutoId) || other.erroProdutoId == erroProdutoId)&&(identical(other.erroGradeId, erroGradeId) || other.erroGradeId == erroGradeId)&&(identical(other.erroGeral, erroGeral) || other.erroGeral == erroGeral)&&(identical(other.erroNumero, erroNumero) || other.erroNumero == erroNumero)&&(identical(other.erroData, erroData) || other.erroData == erroData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,numero,quantidadeProgramada,quantidadeProduzida,barrilId,volumeBarril,produtoId,gradeId,status,data,criadoEm,erroQtProgramada,erroQtProduzida,erroBarrilId,erroVolumeBarril,erroProdutoId,erroGradeId,erroGeral,erroNumero,erroData,isLoading,isSuccess,camposValidos]);

@override
String toString() {
  return 'EditarProducaoState(id: $id, numero: $numero, quantidadeProgramada: $quantidadeProgramada, quantidadeProduzida: $quantidadeProduzida, barrilId: $barrilId, volumeBarril: $volumeBarril, produtoId: $produtoId, gradeId: $gradeId, status: $status, data: $data, criadoEm: $criadoEm, erroQtProgramada: $erroQtProgramada, erroQtProduzida: $erroQtProduzida, erroBarrilId: $erroBarrilId, erroVolumeBarril: $erroVolumeBarril, erroProdutoId: $erroProdutoId, erroGradeId: $erroGradeId, erroGeral: $erroGeral, erroNumero: $erroNumero, erroData: $erroData, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$EditarProducaoStateCopyWith<$Res> implements $EditarProducaoStateCopyWith<$Res> {
  factory _$EditarProducaoStateCopyWith(_EditarProducaoState value, $Res Function(_EditarProducaoState) _then) = __$EditarProducaoStateCopyWithImpl;
@override @useResult
$Res call({
 String id, String numero, String quantidadeProgramada, String quantidadeProduzida, String barrilId, String volumeBarril, String produtoId, String gradeId, StatusProducao status, DateTime? data, DateTime? criadoEm, String? erroQtProgramada, String? erroQtProduzida, String? erroBarrilId, String? erroVolumeBarril, String? erroProdutoId, String? erroGradeId, String? erroGeral, String? erroNumero, String? erroData, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$EditarProducaoStateCopyWithImpl<$Res>
    implements _$EditarProducaoStateCopyWith<$Res> {
  __$EditarProducaoStateCopyWithImpl(this._self, this._then);

  final _EditarProducaoState _self;
  final $Res Function(_EditarProducaoState) _then;

/// Create a copy of EditarProducaoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? numero = null,Object? quantidadeProgramada = null,Object? quantidadeProduzida = null,Object? barrilId = null,Object? volumeBarril = null,Object? produtoId = null,Object? gradeId = null,Object? status = null,Object? data = freezed,Object? criadoEm = freezed,Object? erroQtProgramada = freezed,Object? erroQtProduzida = freezed,Object? erroBarrilId = freezed,Object? erroVolumeBarril = freezed,Object? erroProdutoId = freezed,Object? erroGradeId = freezed,Object? erroGeral = freezed,Object? erroNumero = freezed,Object? erroData = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_EditarProducaoState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,numero: null == numero ? _self.numero : numero // ignore: cast_nullable_to_non_nullable
as String,quantidadeProgramada: null == quantidadeProgramada ? _self.quantidadeProgramada : quantidadeProgramada // ignore: cast_nullable_to_non_nullable
as String,quantidadeProduzida: null == quantidadeProduzida ? _self.quantidadeProduzida : quantidadeProduzida // ignore: cast_nullable_to_non_nullable
as String,barrilId: null == barrilId ? _self.barrilId : barrilId // ignore: cast_nullable_to_non_nullable
as String,volumeBarril: null == volumeBarril ? _self.volumeBarril : volumeBarril // ignore: cast_nullable_to_non_nullable
as String,produtoId: null == produtoId ? _self.produtoId : produtoId // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusProducao,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime?,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,erroQtProgramada: freezed == erroQtProgramada ? _self.erroQtProgramada : erroQtProgramada // ignore: cast_nullable_to_non_nullable
as String?,erroQtProduzida: freezed == erroQtProduzida ? _self.erroQtProduzida : erroQtProduzida // ignore: cast_nullable_to_non_nullable
as String?,erroBarrilId: freezed == erroBarrilId ? _self.erroBarrilId : erroBarrilId // ignore: cast_nullable_to_non_nullable
as String?,erroVolumeBarril: freezed == erroVolumeBarril ? _self.erroVolumeBarril : erroVolumeBarril // ignore: cast_nullable_to_non_nullable
as String?,erroProdutoId: freezed == erroProdutoId ? _self.erroProdutoId : erroProdutoId // ignore: cast_nullable_to_non_nullable
as String?,erroGradeId: freezed == erroGradeId ? _self.erroGradeId : erroGradeId // ignore: cast_nullable_to_non_nullable
as String?,erroGeral: freezed == erroGeral ? _self.erroGeral : erroGeral // ignore: cast_nullable_to_non_nullable
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
