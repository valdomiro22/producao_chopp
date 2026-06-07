import 'package:flutter/material.dart';

class CustomButtomComponent extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  const CustomButtomComponent({super.key, required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onClick,
        child: Text(text),
      )
    );
  }
}
