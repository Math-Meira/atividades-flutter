// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchController, Store {
  final _$suggestionsAtom = Atom(name: '_SearchController.suggestions');

  @override
  ObservableList<Food> get suggestions {
    _$suggestionsAtom.reportRead();
    return super.suggestions;
  }

  @override
  set suggestions(ObservableList<Food> value) {
    _$suggestionsAtom.reportWrite(value, super.suggestions, () {
      super.suggestions = value;
    });
  }

  final _$seachTextAtom = Atom(name: '_SearchController.seachText');

  @override
  String get seachText {
    _$seachTextAtom.reportRead();
    return super.seachText;
  }

  @override
  set seachText(String value) {
    _$seachTextAtom.reportWrite(value, super.seachText, () {
      super.seachText = value;
    });
  }

  final _$_SearchControllerActionController =
      ActionController(name: '_SearchController');

  @override
  void findFood(String text) {
    final _$actionInfo = _$_SearchControllerActionController.startAction(
        name: '_SearchController.findFood');
    try {
      return super.findFood(text);
    } finally {
      _$_SearchControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
suggestions: ${suggestions},
seachText: ${seachText}
    ''';
  }
}
