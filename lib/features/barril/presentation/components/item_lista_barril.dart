import 'package:flutter/material.dart';

import '../../domain/entities/barril_entity.dart';

class ItemListaBarril extends StatelessWidget {
  final BarrilEntity barril;
  final VoidCallback onEditarClick;
  final VoidCallback onDeletarClick;

  const ItemListaBarril({
    super.key,
    required this.barril,
    required this.onEditarClick,
    required this.onDeletarClick,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final bool isDescartavel = barril.descartavel;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      elevation: 1,
      color: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Coluna de informações
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    barril.nome,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),

                  Text(
                    '${barril.volume} Litros',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Badge de status
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: isDescartavel
                          ? const Color(0xFFFFEBEE)
                          : const Color(0xFFE8F5E9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      isDescartavel ? 'Descartável' : 'Retornável',
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isDescartavel
                            ? const Color(0xFF8428C6)
                            : const Color(0xFF2E7D32),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Ações
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: onEditarClick,
                  icon: Icon(
                    Icons.edit,
                    color: theme.colorScheme.primary,
                  ),
                  tooltip: 'Editar',
                ),
                IconButton(
                  onPressed: onDeletarClick,
                  icon: Icon(
                    Icons.delete,
                    color: theme.colorScheme.error,
                  ),
                  tooltip: 'Deletar',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}