// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailController on _DetailController, Store {
  final _$currentImageAtom = Atom(name: '_DetailController.currentImage');

  @override
  int get currentImage {
    _$currentImageAtom.reportRead();
    return super.currentImage;
  }

  @override
  set currentImage(int value) {
    _$currentImageAtom.reportWrite(value, super.currentImage, () {
      super.currentImage = value;
    });
  }

  final _$_DetailControllerActionController =
      ActionController(name: '_DetailController');

  @override
  void setDot(int index) {
    final _$actionInfo = _$_DetailControllerActionController.startAction(
        name: '_DetailController.setDot');
    try {
      return super.setDot(index);
    } finally {
      _$_DetailControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentImage: ${currentImage}
    ''';
  }
}
