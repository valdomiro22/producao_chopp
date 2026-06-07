import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:producao_chopp/features/producao/presentation/screens/buscarproducao/buscar_producao_notifier.dart';

import '../../../core/enums/turno.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/turno_selecionado_colors.dart';
import '../../anotacoes/domain/entities/movimentacao_entity.dart';
import '../../anotacoes/presentation/screens/adicionaranotacao/adicionar_anotacao_notifier.dart';
import '../components/card_quantidade_horaria_component.dart';
import '../components/card_status_producao_component.dart';
import 'mapa_anotacoes_dos_horarios_notifier.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final String producaoId;

  const HomeScreen({super.key, required this.producaoId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarAnotacaoProvider);
    final notifier = ref.watch(adicionarAnotacaoProvider.notifier);
    final producaoState = ref.watch(buscarProducaoDatalhadaProvider(widget.producaoId));
    final mapAnotacoes = ref.watch(mapaAnotacoesDosHorariosProvider(widget.producaoId));

    Turno turnoSelecionado = state.turno;
    List<String> listaHorarios = turnoSelecionado.horarios;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: producaoState.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (pDetalhada) {
          final mapaQuantidades = mapAnotacoes.maybeWhen(
            data: (data) => data,
            orElse: () => <String, AnotacaoEntity>{},
          );

          print('producaoId recebida na home: ${widget.producaoId}');
          print(
            'mapa de movimentacoes na home: ${mapaQuantidades.values} tamanho: ${mapaQuantidades.length}',
          );

          return SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardStatusProducaoComponent(
                        background: AppColors.statusProgramado,
                        contentColor: AppColors.onStatusProgramado,
                        titulo: 'Programado',
                        quantidade: '323',
                      ),
                      CardStatusProducaoComponent(
                        background: AppColors.statusProduzido,
                        contentColor: AppColors.onStatusProduzido,
                        titulo: 'Produzido',
                        quantidade: '323',
                      ),
                      CardStatusProducaoComponent(
                        background: AppColors.statusPendente,
                        contentColor: AppColors.onStatusPendente,
                        titulo: 'Pendente',
                        quantidade: '323',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  Row(
                    children: Turno.values.map((turno) {
                      final selecionado = turno == state.turno;

                      final corBase = selecionado
                          ? TurnoSelecionadoColors.turnoSelecionado()
                          : TurnoSelecionadoColors.turnoNaoSelecionado(context);

                      final corTexto = selecionado
                          ? TurnoSelecionadoColors.onTurnoSelecionado()
                          : TurnoSelecionadoColors.onTurnoNaoSelecionado(context);

                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: GestureDetector(
                            onTap: () {
                              notifier.onTurnoChanged(turno);
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: corBase,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                turno.label,
                                style: TextStyle(
                                  fontWeight: selecionado ? FontWeight.bold : FontWeight.normal,
                                  color: corTexto,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 16),
                  QuantidadeHorariaComponent(
                    horarios: listaHorarios,
                    producao: pDetalhada.producao,
                    quantidades: mapaQuantidades,
                    onRefresh: () {},
                  ),

                  SizedBox(height: 16),

                  ElevatedButton(onPressed: () {}, child: Text('Adicionar movimentação')),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
