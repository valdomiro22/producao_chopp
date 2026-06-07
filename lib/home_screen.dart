import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/common/components/custom_buttom_component.dart';
import 'package:producao_chopp/routes/app_routes_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            SizedBox(height: 16),

            CustomButtomComponent(
              text: 'Lista de Barris',
              onClick: () => context.push(AppRoutesNames.listaBarris),
            ),
            SizedBox(height: 16),

            CustomButtomComponent(
              text: 'Lista de Produtos',
              onClick: () => context.push(AppRoutesNames.listaProdutos),
            ),
            SizedBox(height: 16),

            CustomButtomComponent(
              text: 'Lista de Grades',
              onClick: () => context.push(AppRoutesNames.listaGrades),
            ),
          ],
        ),
      ),
    );
  }
}
