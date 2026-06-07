import 'package:flutter/material.dart';

class CardHorarioComponent extends StatelessWidget {
  final String horario;
  final int quantidade;

  const CardHorarioComponent({super.key, required this.horario, required this.quantidade});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final temQuantidade = quantidade > 0;

    final containerColor = temQuantidade
        ? theme.colorScheme.primaryContainer
        : theme.colorScheme.surfaceContainerHighest;

    final contentColor = temQuantidade
        ? theme.colorScheme.onPrimaryContainer
        : theme.colorScheme.onSurfaceVariant;

    return Card(
      elevation: temQuantidade ? 3 : 0,
      color: containerColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4,
          children: [
            Text(
              horario,
              style: theme.textTheme.labelMedium?.copyWith(
                color: contentColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              quantidade.toString(),
              style: theme.textTheme.titleMedium?.copyWith(
                color: contentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
