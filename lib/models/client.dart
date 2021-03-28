import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = _ClientBase with _$Client;

abstract class _ClientBase with Store {
  @observable
  String name;
  @action
  changeName(String name) => this.name = name;

  @observable
  String email;
  @action
  changeEmail(String email) => this.email = email;

  @observable
  String document;
  @action
  changeDocument(String document) => this.document = document;
}
