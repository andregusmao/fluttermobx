import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermobx/controller.dart';

class Body extends StatelessWidget {
  final Controller controller;

  const Body({Key key, this.controller}) : super(key: key);

  _textField({String label, Function onChanged, Function onErrorValidation}) {
    return TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
          errorText: onErrorValidation(),
        ),
        onChanged: onChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Observer(
              builder: (_) => _textField(
                  label: 'Nome',
                  onChanged: controller.client.changeName,
                  onErrorValidation: controller.validateName),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Observer(
              builder: (_) => _textField(
                  label: 'Email',
                  onChanged: controller.client.changeEmail,
                  onErrorValidation: controller.validateEmail),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Observer(
              builder: (_) => ElevatedButton(
                child: Text('Enviar'),
                onPressed: controller.isValid ? controller.save : null,
              ),
            ),
          )
        ],
      ),
  }
}