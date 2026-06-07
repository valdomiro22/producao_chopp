enum StatusProducao {
  concluida(id: 1, label: 'CONCLUIDA'),
  pendente(id: 2, label: 'PENDENTE'),
  emProducao(id: 3, label: 'EM_PRODUCAO');

  const StatusProducao({required this.id, required this.label});

  final int id;
  final String label;

  static StatusProducao fronId(int id) {
    return StatusProducao.values.firstWhere(
      (tipo) => tipo.id == id,
      orElse: () => throw Exception('Id de status de produção inválido: $id'),
    );
  }
}
