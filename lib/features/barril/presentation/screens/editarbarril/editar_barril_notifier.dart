import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:producao_chopp/features/barril/domain/usecases/update_barril_use_case.dart';
import 'package:producao_chopp/features/barril/providers/barril_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/barril_entity.dart';
import '../listabarris/lista_barris_notifier.dart';

part 'editar_barril_notifier.freezed.dart';

part 'editar_barril_notifier.g.dart';

@riverpod
class EditarBarrilNotifier extends _$EditarBarrilNotifier {

  @override
  EditarBarrilState build() => EditarBarrilState.inicial();

  Future<void> buscarBarril(String barrilId) async {
    final useCase = ref.read(getOneBarrilUseCaseProvider);

    state = state.copyWith(isLoading: true, erroGeral: null, isSucess: false);

    final result = await useCase(barrilId);
    result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, erroGeral: failure.message);
      },
      (barril) {
        state = state.copyWith(
          id: barril.id,
          nome: barril.nome,
          volume: barril.volume.toString(),
          isDescartavel: barril.descartavel,
          criadoEm: barril.criadoEm,
          isLoading: false,
          erroGeral: null,
        );
      },
    );
  }

  void onNomeChanged(String value) {
    state = state.copyWith(nome: value, erroNome: null, erroGeral: null);
  }

  void onVolumeChanged(String value) {
    final filtered = value.replaceAll(RegExp(r'[^0-9]'), '');
    state = state.copyWith(volume: filtered, erroVolume: null, erroGeral: null);
  }

  void onDescartavelChanged(bool value) {
    state = state.copyWith(isDescartavel: value);
  }

  Future<void> editar() async {
    if (!_isCamposValidos()) return;

    final volumeInt = int.tryParse(state.volume.trim());
    if (volumeInt == null || volumeInt <= 0) {
      state = state.copyWith(erroVolume: 'Digite um volume válido');
      return;
    }

    state = state.copyWith(isLoading: true, erroGeral: null, isSucess: false);

    final params = UpdateBarrilParams(
      nome: state.nome.trim(),
      volume: volumeInt,
      descartavel: state.isDescartavel,
      id: state.id,
      criadoEm: state.criadoEm ?? DateTime.now(),
    );

    final useCase = ref.read(updateBarrilUseCaseProvider);
    final result = await useCase(params);

    result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, erroGeral: failure.message, isSucess: false);
      },
      (_) {
        ref.invalidate(listaBarrisProvider);
        state = state.copyWith(isLoading: false, isSucess: true);
      },
    );
  }

  bool _isCamposValidos() {
    bool validos = true;
    String? erroNome;
    String? erroVolume;

    if (state.nome.trim().isEmpty) {
      validos = false;
      erroNome = 'Digite o nome';
    }

    if (state.volume.trim().isEmpty) {
      validos = false;
      erroVolume = 'Digite o volume';
    }

    state = state.copyWith(erroNome: erroNome, erroVolume: erroVolume, erroGeral: null);

    return validos;
  }

  void limpar() => state = EditarBarrilState.inicial();
}

@freezed
sealed class EditarBarrilState with _$EditarBarrilState {
  const factory EditarBarrilState({
    @Default('') String id,
    @Default('') String nome,
    @Default('') String volume,
    @Default(false) bool isDescartavel,
    DateTime? criadoEm,
    String? erroGeral,
    String? erroNome,
    String? erroVolume,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool isCamposValidos,
  }) = _EditarBarrilState;

  factory EditarBarrilState.inicial() => const EditarBarrilState();
}
