import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:producao_chopp/features/producao/presentation/screens/listaproducoes/lista_producoes_notifier.dart';
import 'package:producao_chopp/features/producao/providers/producao_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/usecases/insert_producao_use_case.dart';

part 'adicionar_producao_notifier.freezed.dart';

part 'adicionar_producao_notifier.g.dart';

@riverpod
class AdicionarProducaoNotifier extends _$AdicionarProducaoNotifier {
  @override
  AdicionarProducaoState build() => AdicionarProducaoState.inicial();

  void onQuantidadeProgramadaChanged(String value) {
    state = state.copyWith(
      quantidadeProgramada: value,
      erroQtProgramada: null,
      erroGeral: null,
      isSuccess: false,
    );
  }

  void onQuantidadeProduzidaChanged(String value) {
    state = state.copyWith(
      quantidadeProduzida: value,
      erroQtProduzida: null,
      erroGeral: null,
      isSuccess: false,
    );
  }

  void onGradeIdChanged(String value) {
    state = state.copyWith(gradeId: value, erroGradeId: null, erroGeral: null, isSuccess: false);
  }

  void onBarrilChanged(String? value) {
    state = state.copyWith(
      barrilId: value ?? '',
      erroBarrilId: null,
      erroGeral: null,
      isSuccess: false,
    );
  }

  void onVolumeBarrilChanged(String value) {
    state = state.copyWith(
      volumeBarril: value,
      erroVolumeBarril: null,
      erroGeral: null,
      isSuccess: false,
    );
  }

  void onProdutoChanged(String? value) {
    state = state.copyWith(
      produtoId: value ?? '',
      erroProdutoId: null,
      erroGeral: null,
      isSuccess: false,
    );
  }

  void onDataChanged(DateTime value) {
    state = state.copyWith(data: value, erroData: null, erroGeral: null, isSuccess: false);
  }

  Future<void> adicionarProducao() async {
    if (!_validarCampos()) return;

    final quantidadeProgramadaInt = int.tryParse(state.quantidadeProgramada.trim());
    if (quantidadeProgramadaInt == null || quantidadeProgramadaInt <= 0) {
      state = state.copyWith(erroQtProgramada: 'Digite uma quantidade válida');
      return;
    }

    final vomumeInt = int.tryParse(state.quantidadeProgramada.trim());
    if (vomumeInt == null || vomumeInt <= 0) {
      state = state.copyWith(erroVolumeBarril: 'Insira um volume de barril válido');
      return;
    }

    state = state.copyWith(isLoading: true, erroGeral: null, isSuccess: false);

    final params = InsertProducaoParams(
      barrilId: state.barrilId,
      volumeBarril: vomumeInt,
      produtoId: state.produtoId,
      gradeId: state.gradeId,
      dataInicioProducao: state.data!,
      quantidadeProgramada: quantidadeProgramadaInt,
    );

    final useCase = ref.read(insertProducaoUseCaseProvider);
    final result = await useCase(params);

    await result.fold(
      (failure) async {
        state = state.copyWith(isLoading: false, erroGeral: failure.message, isSuccess: false);
      },
      (_) async {
        ref.invalidate(listaProducoesProvider);

        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _validarCampos() {
    var validos = true;

    String? erroQtProgramada;
    String? erroGradeId;
    String? erroBarril;
    String? erroVolumeBarril;
    String? erroProduto;
    String? erroData;

    if (state.quantidadeProgramada.trim().isEmpty) {
      validos = false;
      erroQtProgramada = 'Digite a quantidade programada';
    }

    if (state.barrilId.isEmpty) {
      validos = false;
      erroBarril = 'Selecione um barril';
    }

    if (state.volumeBarril.isEmpty) {
      validos = false;
      erroVolumeBarril = 'Insira o volume do barril';
    }

    if (state.produtoId.isEmpty) {
      validos = false;
      erroProduto = 'Selecione um produto';
    }

    if (state.data == null) {
      validos = false;
      erroData = 'Selecione uma data';
    }

    if (state.gradeId.isEmpty) {
      validos = false;
      erroGradeId = 'Insira o id da grade atual';
    }

    state = state.copyWith(
      erroQtProgramada: erroQtProgramada,
      erroGradeId: erroGradeId,
      erroBarrilId: erroBarril,
      erroVolumeBarril: erroVolumeBarril,
      erroProdutoId: erroProduto,
      erroData: erroData,
      erroGeral: null,
      isSuccess: false,
    );

    return validos;
  }

  void limpar() {
    state = const AdicionarProducaoState();
  }
}

@freezed
sealed class AdicionarProducaoState with _$AdicionarProducaoState {
  const factory AdicionarProducaoState({
    @Default('') String numero,
    @Default('') String quantidadeProgramada,
    @Default('') String quantidadeProduzida,
    @Default('') String barrilId,
    @Default('') String volumeBarril,
    @Default('') String produtoId,
    @Default('') String gradeId,
    DateTime? data,
    String? erroQtProgramada,
    String? erroQtProduzida,
    String? erroBarrilId,
    String? erroVolumeBarril,
    String? erroProdutoId,
    String? erroGradeId,
    String? erroGeral,
    String? erroNumero,
    String? erroData,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _AdicionarProducaoState;

  factory AdicionarProducaoState.inicial() => const AdicionarProducaoState();
}
