// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Client on _ClientBase, Store {
  final _$nameAtom = Atom(name: '_ClientBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_ClientBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$documentAtom = Atom(name: '_ClientBase.document');

  @override
  String get document {
    _$documentAtom.reportRead();
    return super.document;
  }

  @override
  set document(String value) {
    _$documentAtom.reportWrite(value, super.document, () {
      super.document = value;
    });
  }

  final _$_ClientBaseActionController = ActionController(name: '_ClientBase');

  @override
  dynamic changeName(String name) {
    final _$actionInfo = _$_ClientBaseActionController.startAction(
        name: '_ClientBase.changeName');
    try {
      return super.changeName(name);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String email) {
    final _$actionInfo = _$_ClientBaseActionController.startAction(
        name: '_ClientBase.changeEmail');
    try {
      return super.changeEmail(email);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDocument(String document) {
    final _$actionInfo = _$_ClientBaseActionController.startAction(
        name: '_ClientBase.changeDocument');
    try {
      return super.changeDocument(document);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
document: ${document}
    ''';
  }
}
