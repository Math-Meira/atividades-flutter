// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardapio_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardapioController on _CardapioController, Store {
  final _$cardapioAtom = Atom(name: '_CardapioController.cardapio');

  @override
  ObservableList<Food> get cardapio {
    _$cardapioAtom.reportRead();
    return super.cardapio;
  }

  @override
  set cardapio(ObservableList<Food> value) {
    _$cardapioAtom.reportWrite(value, super.cardapio, () {
      super.cardapio = value;
    });
  }

  final _$_CardapioControllerActionController =
      ActionController(name: '_CardapioController');

  @override
  void setCardapio() {
    final _$actionInfo = _$_CardapioControllerActionController.startAction(
        name: '_CardapioController.setCardapio');
    try {
      return super.setCardapio();
    } finally {
      _$_CardapioControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFavorite(Food food) {
    final _$actionInfo = _$_CardapioControllerActionController.startAction(
        name: '_CardapioController.setFavorite');
    try {
      return super.setFavorite(food);
    } finally {
      _$_CardapioControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardapio: ${cardapio}
    ''';
  }
}
