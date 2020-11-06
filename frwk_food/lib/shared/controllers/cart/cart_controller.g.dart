// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartController, Store {
  final _$cartAtom = Atom(name: '_CartController.cart');

  @override
  ObservableList<Food> get cart {
    _$cartAtom.reportRead();
    return super.cart;
  }

  @override
  set cart(ObservableList<Food> value) {
    _$cartAtom.reportWrite(value, super.cart, () {
      super.cart = value;
    });
  }

  final _$changingAtom = Atom(name: '_CartController.changing');

  @override
  int get changing {
    _$changingAtom.reportRead();
    return super.changing;
  }

  @override
  set changing(int value) {
    _$changingAtom.reportWrite(value, super.changing, () {
      super.changing = value;
    });
  }

  final _$_CartControllerActionController =
      ActionController(name: '_CartController');

  @override
  void addFood(Food food) {
    final _$actionInfo = _$_CartControllerActionController.startAction(
        name: '_CartController.addFood');
    try {
      return super.addFood(food);
    } finally {
      _$_CartControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addRemFood({@required int index, @required int op}) {
    final _$actionInfo = _$_CartControllerActionController.startAction(
        name: '_CartController.addRemFood');
    try {
      return super.addRemFood(index: index, op: op);
    } finally {
      _$_CartControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromCart(int index) {
    final _$actionInfo = _$_CartControllerActionController.startAction(
        name: '_CartController.removeFromCart');
    try {
      return super.removeFromCart(index);
    } finally {
      _$_CartControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cart: ${cart},
changing: ${changing}
    ''';
  }
}
