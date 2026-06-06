import 'package:flutter/material.dart';

import 'app_colors.dart';

class TurnoSelecionadoColors {
  static bool _isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Color turnoSelecionado() {
    return AppColors.choppTeal;
  }

  static Color onTurnoSelecionado() {
    return Colors.white;
  }

  static Color turnoNaoSelecionado(BuildContext context) {
    return _isDark(context)
        ? AppColors.turnoNaoSelecionadoDark
        : AppColors.turnoNaoSelecionadoLight;
  }

  static Color onTurnoNaoSelecionado(BuildContext context) {
    return _isDark(context)
        ? AppColors.turnoNaoSelecionadoLight
        : AppColors.turnoNaoSelecionadoDark;
  }
}
