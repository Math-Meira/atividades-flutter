import 'package:mobx/mobx.dart';

part 'detail_controller.g.dart';

class DetailController = _DetailController with _$DetailController;

abstract class _DetailController with Store {
  @observable
  int currentImage = 0;

  @action
  void setDot(int index) {
    currentImage = index;
  }
}
