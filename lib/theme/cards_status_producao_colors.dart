import 'package:flutter/material.dart';

class CardsStatusProducaoColors {
  static bool _isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // TODO - Ver se isso vai ser util

  static Color statusProgramado(BuildContext context) {
    return _isDark(context)
        ? const Color(0xFF90CAF9) // Azul claro para tema escuro.
        : const Color(0xFF1976D2); // Azul forte para tema claro.
  }

  static Color onStatusProgramado(BuildContext context) {
    return _isDark(context)
        ? Colors
              .black // Texto preto no tema escuro.
        : Colors.white; // Texto branco no tema claro.
  }

  static Color statusProduzido(BuildContext context) {
    return _isDark(context)
        ? const Color(0xFFA5D6A7) // Verde claro para tema escuro.
        : const Color(0xFF2E7D32); // Verde forte para tema claro.
  }

  static Color onStatusProduzido(BuildContext context) {
    return _isDark(context)
        ? Colors
              .black // Texto preto sobre verde claro.
        : Colors.white; // Texto branco sobre verde forte.
  }

  static Color statusPendente(BuildContext context) {
    return _isDark(context)
        ? const Color(0xFFFFCC80) // Laranja claro para tema escuro.
        : const Color(0xFFF57C00); // Laranja forte para tema claro.
  }

  static Color onStatusPendente(BuildContext context) {
    return _isDark(context)
        ? Colors
              .black // Texto preto sobre laranja claro.
        : Colors.white; // Texto branco sobre laranja forte.
  }
}
