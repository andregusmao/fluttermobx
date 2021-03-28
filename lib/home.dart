import 'package:flutter/material.dart';
import 'package:fluttermobx/body.dart';
import 'package:fluttermobx/controller.dart';

class HomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              controller.isValid ? 'Formulário Válido' : 'Formulário Inválido'),
        ),
        body: Body(
          controller: controller,
        ));
  }
}
