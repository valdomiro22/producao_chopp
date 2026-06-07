class ProducaoHelper {
  ProducaoHelper._();

  static double calcularVolumeNecessario({
    required int quantidadeProgramada,
    required int quantidadeProduzida,
    required int volumeBarril,
  }) {
    final quantidadePendente = quantidadeProgramada - quantidadeProduzida;

    return (quantidadePendente * volumeBarril) / 100.0;
  }

  static double calcularVolumeNecessarioParaGrade({
    required int quantidadeDeBarris,
    required int volumeBarril,
  }) {
    return (quantidadeDeBarris * volumeBarril) / 100.0;
  }
}