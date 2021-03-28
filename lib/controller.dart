import 'package:fluttermobx/models/client.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final client = Client();

  @computed
  bool get isValid => validateName() == null && validateEmail() == null;

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'Obrigatório informar o nome';
    }
    if (client.name.length < 3) {
      return 'Obrigatório no mínimo 3 caracteres';
    }

    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'Obrigatório informar o email';
    }
    if (!client.email.contains('@')) {
      return 'Email inválido';
    }

    return null;
  }

  void save() {
    print('Nome: ${client.name}');
    print('Email: ${client.email}');
  }

  void dispose() {
    print('Close application');
  }
}
