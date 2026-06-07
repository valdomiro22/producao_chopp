import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:producao_chopp/core/enums/status_producao.dart';
import 'package:producao_chopp/features/producao/presentation/screens/listaproducoes/lista_producoes_notifier.dart';
import 'package:producao_chopp/features/producao/providers/producao_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/usecases/update_producao_use_case.dart';

part 'editar_producao_notifier.freezed.dart';

part 'editar_producao_notifier.g.dart';

@riverpod
class EditarProducaoNotifier extends _$EditarProducaoNotifier {
  EditarProducaoState build() => EditarProducaoState.inicial();

  Future<void> buscarProducao(String producaoId) async {
    final useCase = ref.read(getProducaoDetalhadaProvider);
    final result = await useCase(producaoId);

    result.fold(
      (failure) {
        print('Erro ao buacar a produção: ${failure.message}');
        state = state.copyWith(isLoading: false, erroGeral: failure.message);
      },
      (pdDetalhada) {
        print('Produção buscada con sucesso');
        state = state.copyWith(
          id: pdDetalhada.producao.id,
          quantidadeProgramada: pdDetalhada.producao.quantidadeProgramada.toString(),
          quantidadeProduzida: pdDetalhada.producao.quantidadeProduzida.toString(),
          data: pdDetalhada.producao.dataInicioProducao,
          barrilId: pdDetalhada.barril.id,
          produtoId: pdDetalhada.produto.id,
          gradeId: pdDetalhada.producao.gradeId,
          volumeBarril: pdDetalhada.barril.volume.toString(),
          isLoading: false,
          erroGeral: null,
          isSuccess: false,
        );
      },
    );
  }

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

  Future<void> editarProducao() async {
    if (!_validarCampos()) return;

    print('Depois de ter validado');
    final quantidadeProgramadaInt = int.tryParse(state.quantidadeProgramada.trim());
    if (quantidadeProgramadaInt == null || quantidadeProgramadaInt <= 0) {
      state = state.copyWith(erroQtProgramada: 'Digite uma quantidade válida');
      return;
    }

    final quantidadeProduzidaInt = int.tryParse(state.quantidadeProduzida.trim());
    if (quantidadeProduzidaInt == null || quantidadeProduzidaInt < 0) {
      state = state.copyWith(erroQtProduzida: 'Digite uma quantidade válida');
      return;
    }

    final vomumeInt = int.tryParse(state.quantidadeProgramada.trim());
    if (vomumeInt == null || vomumeInt <= 0) {
      state = state.copyWith(erroVolumeBarril: 'Insira um volume de barril válido');
      return;
    }

    print('depois das conversoes');
    state = state.copyWith(isLoading: true, erroGeral: null, isSuccess: false);

    final params = UpdateProducaoParams(
      barrilId: state.barrilId,
      volumeBarril: vomumeInt,
      produtoId: state.produtoId,
      data: state.data!,
      quantidadeProduzida: quantidadeProduzidaInt,
      quantidadeProgramada: quantidadeProgramadaInt,
      id: state.id,
      gradeId: state.gradeId,
      status: state.status,
      criadoEm: state.criadoEm ?? DateTime.now(),
    );

    final useCase = ref.read(updateProducaoUseCaseProvider);
    final result = await useCase(params);

    result.fold(
      (failure) {
        print('Deu erro antes: ${failure.message}');
        state = state.copyWith(isLoading: false, erroGeral: failure.message, isSuccess: false);
      },
      (_) {
        print('conseguiu editar');
        ref.invalidate(listaProducoesProvider);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _validarCampos() {
    var validos = true;

    print('Começou a validar');

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

    print('Finalizou a validação');
    return validos;
  }

  void limpar() {
    state = const EditarProducaoState();
  }
}

@freezed
sealed class EditarProducaoState with _$EditarProducaoState {
  const factory EditarProducaoState({
    @Default('') String id,
    @Default('') String numero,
    @Default('') String quantidadeProgramada,
    @Default('') String quantidadeProduzida,
    @Default('') String barrilId,
    @Default('') String volumeBarril,
    @Default('') String produtoId,
    @Default('') String gradeId,
    @Default(StatusProducao.pendente) StatusProducao status,
    DateTime? data,
    DateTime? criadoEm,
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
  }) = _EditarProducaoState;

  factory EditarProducaoState.inicial() => const EditarProducaoState();
}
