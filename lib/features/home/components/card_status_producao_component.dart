import 'package:flutter/material.dart';

class CardStatusProducaoComponent extends StatelessWidget {
  final Color background;
  final Color contentColor;
  final String titulo;
  final String quantidade;
  final double largura;
  final double altura;
  final double conteudoTextSize;

  const CardStatusProducaoComponent({
    super.key,
    required this.background,
    this.contentColor = Colors.white,
    required this.titulo,
    required this.quantidade,
    this.largura = 110,
    this.altura = 120,
    this.conteudoTextSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(12));

    final isDark = Theme.of(context).brightness == Brightness.dark;

    final cardBackground = Theme.of(context).colorScheme.surface;

    final quantidadeBackground = background.withValues(alpha: isDark ? 0.22 : 0.12);

    return Container(
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        color: cardBackground,
        borderRadius: borderRadius,
        border: Border.all(width: 1.5, color: background.withValues(alpha: 0.85)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              color: background,
              alignment: Alignment.center,
              child: Text(
                titulo,
                style: TextStyle(color: contentColor, fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
          ),

          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              color: quantidadeBackground,
              alignment: Alignment.center,
              child: Text(
                quantidade,
                style: TextStyle(
                  color: background,
                  fontSize: conteudoTextSize,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
