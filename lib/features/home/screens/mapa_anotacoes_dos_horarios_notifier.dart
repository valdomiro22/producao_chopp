import 'package:producao_chopp/features/anotacoes/domain/entities/movimentacao_entity.dart';
import 'package:producao_chopp/features/anotacoes/providers/anotacao_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mapa_anotacoes_dos_horarios_notifier.g.dart';

@riverpod
class MapaAnotacoesDosHorariosNotifier extends _$MapaAnotacoesDosHorariosNotifier {
  @override
  Future<Map<String, AnotacaoEntity>> build(String producaoId) {
    return _buscarMovimentacoes(producaoId);
  }

  Future<Map<String, AnotacaoEntity>> _buscarMovimentacoes(String producaoId) async {
    final useCase = ref.read(getAllAnotacoesOfProducaoUseCaseProvider);
    final result = await useCase(producaoId);

    return result.fold(
          (failure) {
        throw Exception(failure.message);
      },
          (listaMovimentacoes) {
        final mapaAgrupadoPorHorario = <String, List<AnotacaoEntity>>{};

        for (final movimentacao in listaMovimentacoes) {
          final horario = movimentacao.horarioReferente;

          mapaAgrupadoPorHorario.putIfAbsent(horario, () => []);

          mapaAgrupadoPorHorario[horario]!.add(movimentacao);
        }

        final mapaSomatorio = mapaAgrupadoPorHorario.map((horario, lista) {
          final total = lista.fold<int>(0, (soma, movimentacao) => soma + movimentacao.quantidade);

          return MapEntry(horario, lista.first.copyWith(quantidade: total));
        });

        return mapaSomatorio;
      },
    );
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      return _buscarMovimentacoes(producaoId);
    });
  }
}
