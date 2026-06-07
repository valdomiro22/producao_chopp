import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:producao_chopp/features/barril/domain/usecases/insert_barril_use_case.dart';
import 'package:producao_chopp/features/barril/presentation/screens/listabarris/lista_barris_notifier.dart';
import 'package:producao_chopp/features/barril/providers/barril_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adicionar_barril_notifier.freezed.dart';

part 'adicionar_barril_notifier.g.dart';

@riverpod
class AdicionarBarrilNotifier extends _$AdicionarBarrilNotifier {
  @override
  AdicionarBarrilState build() => AdicionarBarrilState.inicial();

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

  Future<void> adicionar() async {
    if (!_isCamposValidos()) return;

    final volumeInt = int.tryParse(state.volume.trim());
    if (volumeInt == null || volumeInt <= 0) {
      state = state.copyWith(erroVolume: 'Digite um volume válido');
      return;
    }

    state = state.copyWith(isLoading: true, erroGeral: null, isSucess: false);

    final params = InsertBarrilParams(
      nome: state.nome.trim(),
      volume: volumeInt,
      descartavel: state.isDescartavel,
    );

    final useCase = ref.read(insertBarrilUseCaseProvider);
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

  void limpar() => state = AdicionarBarrilState.inicial();
}

@freezed
sealed class AdicionarBarrilState with _$AdicionarBarrilState {
  const factory AdicionarBarrilState({
    @Default('') String nome,
    @Default('') String volume,
    @Default(false) bool isDescartavel,
    String? erroGeral,
    String? erroNome,
    String? erroVolume,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool isCamposValidos,
  }) = _AdicionarBarrilState;

  factory AdicionarBarrilState.inicial() => const AdicionarBarrilState();
}
