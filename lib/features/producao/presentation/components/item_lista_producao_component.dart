import 'package:flutter/material.dart';

import '../../../barril/domain/entities/barril_entity.dart';
import '../../../produto/domain/entities/produto_entity.dart';
import '../../domain/entities/producao_entity.dart';

class ItemListaProducaoComponent extends StatelessWidget {
  final BarrilEntity barril;
  final ProdutoEntity produto;
  final ProducaoEntity producao;
  final VoidCallback onEditarClick;
  final VoidCallback onDeletarClick;
  final VoidCallback onItemClick;

  const ItemListaProducaoComponent({
    super.key,
    required this.barril,
    required this.produto,
    required this.producao,
    required this.onEditarClick,
    required this.onDeletarClick,
    required this.onItemClick,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final double progresso = producao.quantidadeProgramada > 0
        ? producao.quantidadeProduzida / producao.quantidadeProgramada
        : 0.0;

    final double progressoLimitado = progresso.clamp(0.0, 1.0);

    final bool producaoConcluida = progressoLimitado >= 1.0;

    final Color corStatusLateral = producaoConcluida
        ? colorScheme.primary
        : colorScheme.secondary;

    final Color corFundoBadge = producaoConcluida
        ? colorScheme.primary.withOpacity(0.12)
        : colorScheme.secondary.withOpacity(0.12);

    final Color corTextoBadge = producaoConcluida
        ? colorScheme.primary
        : colorScheme.secondary;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      elevation: 3,
      color: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onItemClick,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 8,
                decoration: BoxDecoration(
                  color: corStatusLateral,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  produto.nome,
                                  style: textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: colorScheme.onSurface,
                                  ),
                                ),

                                Text(
                                  'Barril de ${barril.nome}',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: corFundoBadge,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '${(progressoLimitado * 100).toInt()}%',
                              style: textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: corTextoBadge,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          _InfoQuantidade(
                            titulo: 'PRODUZIDO',
                            valor: producao.quantidadeProduzida.toString(),
                            tituloColor: colorScheme.onSurfaceVariant,
                            valorColor: colorScheme.onSurface,
                          ),

                          const SizedBox(width: 24),

                          _InfoQuantidade(
                            titulo: 'PROGRAMADO',
                            valor: producao.quantidadeProgramada.toString(),
                            tituloColor: colorScheme.onSurfaceVariant,
                            valorColor: colorScheme.onSurfaceVariant,
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: LinearProgressIndicator(
                          value: progressoLimitado,
                          minHeight: 8,
                          color: corStatusLateral,
                          backgroundColor: colorScheme.surfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: onEditarClick,
                      icon: Icon(
                        Icons.edit,
                        color: colorScheme.outline,
                      ),
                      tooltip: 'Editar Produção',
                    ),

                    IconButton(
                      onPressed: onDeletarClick,
                      icon: Icon(
                        Icons.delete,
                        color: colorScheme.error.withOpacity(0.8),
                      ),
                      tooltip: 'Deletar Produção',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoQuantidade extends StatelessWidget {
  final String titulo;
  final String valor;
  final Color tituloColor;
  final Color valorColor;

  const _InfoQuantidade({
    required this.titulo,
    required this.valor,
    required this.tituloColor,
    required this.valorColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: textTheme.labelSmall?.copyWith(
            color: tituloColor,
          ),
        ),

        Text(
          valor,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: valorColor,
          ),
        ),
      ],
    );
  }
}