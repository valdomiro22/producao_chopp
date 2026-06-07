import 'package:flutter/material.dart';

import '../../domain/entities/produto_entity.dart';

class ProdutoDropdownComponent extends StatelessWidget {
  final List<ProdutoEntity> produtos;
  final String? produtoIdSelecionado;
  final void Function(ProdutoEntity? produto) onChanged;

  const ProdutoDropdownComponent({
    super.key,
    required this.produtos,
    required this.produtoIdSelecionado,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final ProdutoEntity? produtoSelecionado = produtoIdSelecionado == null
        ? null
        : produtos.where((p) => p.id == produtoIdSelecionado).firstOrNull;

    return DropdownButton<ProdutoEntity>(
      dropdownColor: Colors.brown[200],
      isExpanded: true,
      padding: EdgeInsets.symmetric(horizontal: 4),
      borderRadius: BorderRadius.circular(10),
      hint: Text('Produto', style: TextStyle(color: Theme.of(context).colorScheme.primary)),
      isDense: false,
      value: produtoSelecionado,
      items: produtos.map((produto) {
        return DropdownMenuItem<ProdutoEntity>(
          value: produto,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Text(produto.nome, style: const TextStyle(color: Colors.black),
          )),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
