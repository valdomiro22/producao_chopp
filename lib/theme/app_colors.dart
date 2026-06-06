import 'package:flutter/material.dart';

// ======================================================
// PALETA BASE - Chopp Industrial
// Inspirada na imagem enviada
// ======================================================

class AppColors {
  AppColors._();

  static const Color choppTeal = Color(0xFF01757A);
  static const Color choppNeutral = Color(0xFFB6ACAD);
  static const Color choppPeach = Color(0xFFF8C0A6);
  static const Color choppCream = Color(0xFFFBEBCF);
  static const Color choppOrange = Color(0xFFE57734);
  static const Color choppDarkBrown = Color(0xFF3E2922);

  // ======================================================
  // CORES AUXILIARES
  // ======================================================

  static const Color choppDarkBackground = Color(0xFF17100D);
  static const Color choppDarkSurface = Color(0xFF241915);
  static const Color choppDarkSurfaceVariant = Color(0xFF3A2A24);

  static const Color choppLightBackground = Color(0xFFFFF7EA);
  static const Color choppLightSurface = Color(0xFFFFFFFF);
  static const Color choppLightSurfaceVariant = Color(0xFFF4DDC8);

  // ======================================================
  // TEMA CLARO
  // ======================================================

  static const Color primaryLightChopp = choppTeal;
  static const Color onPrimaryLightChopp = Colors.white;

  static const Color primaryContainerLightChopp = Color(0xFFB8EEF0);
  static const Color onPrimaryContainerLightChopp = Color(0xFF002F32);

  static const Color secondaryLightChopp = choppDarkBrown;
  static const Color onSecondaryLightChopp = Colors.white;

  static const Color secondaryContainerLightChopp = Color(0xFFEBD7CF);
  static const Color onSecondaryContainerLightChopp = choppDarkBrown;

  static const Color tertiaryLightChopp = choppOrange;
  static const Color onTertiaryLightChopp = Colors.white;

  static const Color tertiaryContainerLightChopp = Color(0xFFFFDCC8);
  static const Color onTertiaryContainerLightChopp = Color(0xFF4A1600);

  static const Color backgroundLightChopp = choppLightBackground;
  static const Color onBackgroundLightChopp = choppDarkBrown;

  static const Color surfaceLightChopp = choppLightSurface;
  static const Color onSurfaceLightChopp = choppDarkBrown;

  static const Color surfaceVariantLightChopp = choppLightSurfaceVariant;
  static const Color onSurfaceVariantLightChopp = Color(0xFF594136);

  static const Color outlineLightChopp = Color(0xFF8D756C);
  static const Color outlineVariantLightChopp = Color(0xFFDCC3B7);

  static const Color errorLightChopp = Color(0xFFBA1A1A);
  static const Color onErrorLightChopp = Colors.white;

  // ======================================================
  // TEMA ESCURO
  // ======================================================

  static const Color primaryDarkChopp = Color(0xFF4FD8DC);
  static const Color onPrimaryDarkChopp = Color(0xFF003739);

  static const Color primaryContainerDarkChopp = choppTeal;
  static const Color onPrimaryContainerDarkChopp = Colors.white;

  static const Color secondaryDarkChopp = choppPeach;
  static const Color onSecondaryDarkChopp = Color(0xFF4E2415);

  static const Color secondaryContainerDarkChopp = Color(0xFF6B3A28);
  static const Color onSecondaryContainerDarkChopp = Color(0xFFFFDCCB);

  static const Color tertiaryDarkChopp = Color(0xFFFFB787);
  static const Color onTertiaryDarkChopp = Color(0xFF542000);

  static const Color tertiaryContainerDarkChopp = choppOrange;
  static const Color onTertiaryContainerDarkChopp = Colors.white;

  static const Color backgroundDarkChopp = choppDarkBackground;
  static const Color onBackgroundDarkChopp = Color(0xFFFBEFE6);

  static const Color surfaceDarkChopp = choppDarkSurface;
  static const Color onSurfaceDarkChopp = Color(0xFFFBEFE6);

  static const Color surfaceVariantDarkChopp = choppDarkSurfaceVariant;
  static const Color onSurfaceVariantDarkChopp = Color(0xFFE8D2C6);

  static const Color outlineDarkChopp = Color(0xFFA99287);
  static const Color outlineVariantDarkChopp = Color(0xFF57413A);

  static const Color errorDarkChopp = Color(0xFFFFB4AB);
  static const Color onErrorDarkChopp = Color(0xFF690005);

  // ======================================================
  // CORES SEMÂNTICAS DO APP
  // ======================================================

  static const Color statusProgramado = choppTeal;
  static const Color onStatusProgramado = Colors.white;

  static const Color statusProduzido = choppOrange;
  static const Color onStatusProduzido = Colors.white;

  static const Color statusPendente = choppDarkBrown;
  static const Color onStatusPendente = Colors.white;

  static const Color turnoSelecionado = choppTeal;
  static const Color onTurnoSelecionado = Colors.white;

  static const Color turnoNaoSelecionadoLight = choppCream;
  static const Color onTurnoNaoSelecionadoLight = choppDarkBrown;

  static const Color turnoNaoSelecionadoDark = choppDarkSurfaceVariant;
  static const Color onTurnoNaoSelecionadoDark = Color(0xFFE8D2C6);

  static const Color productionSuccess = choppTeal;
  static const Color productionWarning = choppOrange;
  static const Color productionDanger = Color(0xFFC84324);
  static const Color productionNeutral = choppNeutral;
  static const Color productionHighlight = choppOrange;
}