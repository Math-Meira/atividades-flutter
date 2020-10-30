// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsController on _DetailsController, Store {
  final _$tittlesAtom = Atom(name: '_DetailsController.tittles');

  @override
  List<String> get tittles {
    _$tittlesAtom.reportRead();
    return super.tittles;
  }

  @override
  set tittles(List<String> value) {
    _$tittlesAtom.reportWrite(value, super.tittles, () {
      super.tittles = value;
    });
  }

  final _$currentTabAtom = Atom(name: '_DetailsController.currentTab');

  @override
  String get currentTab {
    _$currentTabAtom.reportRead();
    return super.currentTab;
  }

  @override
  set currentTab(String value) {
    _$currentTabAtom.reportWrite(value, super.currentTab, () {
      super.currentTab = value;
    });
  }

  final _$_DetailsControllerActionController =
      ActionController(name: '_DetailsController');

  @override
  void setCurrentTab(String tab) {
    final _$actionInfo = _$_DetailsControllerActionController.startAction(
        name: '_DetailsController.setCurrentTab');
    try {
      return super.setCurrentTab(tab);
    } finally {
      _$_DetailsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tittles: ${tittles},
currentTab: ${currentTab}
    ''';
  }
}
