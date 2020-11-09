// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaymentController on _PaymentController, Store {
  final _$valueAtom = Atom(name: '_PaymentController.value');

  @override
  double get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(double value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$cardAtom = Atom(name: '_PaymentController.card');

  @override
  bool get card {
    _$cardAtom.reportRead();
    return super.card;
  }

  @override
  set card(bool value) {
    _$cardAtom.reportWrite(value, super.card, () {
      super.card = value;
    });
  }

  final _$bankAtom = Atom(name: '_PaymentController.bank');

  @override
  bool get bank {
    _$bankAtom.reportRead();
    return super.bank;
  }

  @override
  set bank(bool value) {
    _$bankAtom.reportWrite(value, super.bank, () {
      super.bank = value;
    });
  }

  final _$doorAtom = Atom(name: '_PaymentController.door');

  @override
  bool get door {
    _$doorAtom.reportRead();
    return super.door;
  }

  @override
  set door(bool value) {
    _$doorAtom.reportWrite(value, super.door, () {
      super.door = value;
    });
  }

  final _$pickupAtom = Atom(name: '_PaymentController.pickup');

  @override
  bool get pickup {
    _$pickupAtom.reportRead();
    return super.pickup;
  }

  @override
  set pickup(bool value) {
    _$pickupAtom.reportWrite(value, super.pickup, () {
      super.pickup = value;
    });
  }

  final _$_PaymentControllerActionController =
      ActionController(name: '_PaymentController');

  @override
  void setValue(List<Food> cart) {
    final _$actionInfo = _$_PaymentControllerActionController.startAction(
        name: '_PaymentController.setValue');
    try {
      return super.setValue(cart);
    } finally {
      _$_PaymentControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dotPress(String op) {
    final _$actionInfo = _$_PaymentControllerActionController.startAction(
        name: '_PaymentController.dotPress');
    try {
      return super.dotPress(op);
    } finally {
      _$_PaymentControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
card: ${card},
bank: ${bank},
door: ${door},
pickup: ${pickup}
    ''';
  }
}
