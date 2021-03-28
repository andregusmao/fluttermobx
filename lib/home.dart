import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermobx/body.dart';
import 'package:fluttermobx/controller.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();

    return Scaffold(
        appBar: AppBar(
          title: Observer(builder: (_) {
            return Text(controller.isValid
                ? 'Formulário Válido'
                : 'Formulário Inválido');
          }),
        ),
        body: Body());
  }
}
