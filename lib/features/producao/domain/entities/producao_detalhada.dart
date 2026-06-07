import 'package:producao_chopp/features/producao/domain/entities/producao_entity.dart';

import '../../../barril/domain/entities/barril_entity.dart';
import '../../../produto/domain/entities/produto_entity.dart';

/// Esta classe serve para juntar infomações de Produção, Barril e Produto em um so lugar
class ProducaoDetalhada {
  final ProducaoEntity producao;
  final BarrilEntity barril;
  final ProdutoEntity produto;

  ProducaoDetalhada({required this.producao, required this.barril, required this.produto});

  int get quantidadePendente => producao.quantidadeProgramada - producao.quantidadeProduzida;

  double get volumeParaProducao => (producao.quantidadeProgramada * barril.volume) / 100.0;

  double get volumeConsumido => (producao.quantidadeProduzida * barril.volume) / 100.0;

  double get volumePendente => (quantidadePendente * barril.volume) / 100.0;

  String get nomeDoBarril => barril.nome;

  int get volumeDoBarril => barril.volume;

  String get nomeDoProduto => produto.nome;
}
