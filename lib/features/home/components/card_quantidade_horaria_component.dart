import 'package:flutter/material.dart';
import 'package:producao_chopp/features/anotacoes/domain/entities/movimentacao_entity.dart';

import '../../producao/domain/entities/producao_entity.dart';
import 'add_quantidade_horaria_dialog_component.dart';
import 'card_horario_component.dart';

class QuantidadeHorariaComponent extends StatefulWidget {
  final List<String> horarios;
  final ProducaoEntity producao;
  final Map<String, AnotacaoEntity> quantidades;
  final VoidCallback onRefresh;

  const QuantidadeHorariaComponent({
    super.key,
    required this.horarios,
    required this.producao,
    required this.quantidades,
    required this.onRefresh,
  });

  @override
  State<QuantidadeHorariaComponent> createState() => _QuantidadeHorariaComponentState();
}

class _QuantidadeHorariaComponentState extends State<QuantidadeHorariaComponent> {
  String horarioSelecionado = '';

  int get totalProduzido {
    return widget.quantidades.values.fold<int>(
      0,
      (total, movimentacao) => total + movimentacao.quantidade,
    );
  }

  Future<void> _abrirDialog(String horario) async {
    horarioSelecionado = horario;

    final sucesso = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AddQtHorariaDialog(producao: widget.producao, horario: horarioSelecionado);
      },
    );

    if (sucesso == true) {
      widget.onRefresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(2),
          itemCount: widget.horarios.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,

            // Define diretamente a altura de cada item do grid.
            mainAxisExtent: 72,
          ),
          itemBuilder: (context, index) {
            final horario = widget.horarios[index];

            final movimentacao = widget.quantidades[horario];
            final quantidade = movimentacao?.quantidade ?? 0;

            return GestureDetector(
              onTap: () => _abrirDialog(horario),
              child: CardHorarioComponent(horario: horario, quantidade: quantidade),
            );
          },
        ),
      ],
    );
  }
}
