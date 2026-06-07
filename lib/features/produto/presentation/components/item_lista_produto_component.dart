import 'package:flutter/material.dart';

import '../../domain/entities/produto_entity.dart';

class ItemListaProdutoComponent extends StatelessWidget {
  final ProdutoEntity produto;
  final VoidCallback onEditarClick;
  final VoidCallback onDeletarClick;

  const ItemListaProdutoComponent({
    super.key,
    required this.produto,
    required this.onEditarClick,
    required this.onDeletarClick,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 2,
      color: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Coluna de informações do produto
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Título principal
                  Text(
                    produto.nome,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),

                  const SizedBox(height: 4),

                  // Subtítulo descritivo
                  Text(
                    'Validade: ${produto.prazoValidade} dias',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),

            // Botões de ação na lateral direita
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: onEditarClick,
                  icon: Icon(Icons.edit, color: theme.colorScheme.primary),
                  tooltip: 'Editar Produto',
                ),
                IconButton(
                  onPressed: onDeletarClick,
                  icon: Icon(Icons.delete, color: theme.colorScheme.error),
                  tooltip: 'Deletar Produto',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
