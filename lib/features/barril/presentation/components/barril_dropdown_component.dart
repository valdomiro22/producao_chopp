import 'package:flutter/material.dart';

import '../../domain/entities/barril_entity.dart';

class BarrilDropdownComponent extends StatelessWidget {
  final List<BarrilEntity> barris;
  final String? barrilIdSelecionado;
  final void Function(String? barrilId) onChanged;

  const BarrilDropdownComponent({
    super.key,
    required this.barris,
    required this.barrilIdSelecionado,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      dropdownColor: Colors.brown[200],
      isExpanded: true,
      borderRadius: BorderRadius.circular(10),
      hint: Text(
        'Barril',
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
      isDense: false,

      value: barrilIdSelecionado?.isEmpty == true ? null : barrilIdSelecionado,

      items: barris.map((barril) {
        return DropdownMenuItem<String>(
          value: barril.id,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              barril.nome,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        );
      }).toList(),

      onChanged: onChanged,
    );
  }
}