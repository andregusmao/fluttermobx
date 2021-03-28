import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = _ClientBase with _$Client;

abstract class _ClientBase with Store {
  @observable
  String name;
  @observable
  String email;
  @observable
  String document;

  @action
  changeName(String name) => this.name = name;
  @action
  changeEmail(String email) => this.email = email;
  @action
  changeDocument(String document) => this.document = document;
}
