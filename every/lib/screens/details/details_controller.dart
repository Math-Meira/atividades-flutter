import 'package:mobx/mobx.dart';

part 'details_controller.g.dart';

class DetailsController = _DetailsController with _$DetailsController;

abstract class _DetailsController with Store {

  @observable
  List<String> tittles = ["PEOPLE", "TOPICS", "NOTIFICATIONS", "ASSETS"];

  @observable
  String currentTab = "PEOPLE";

  @action
  void setCurrentTab(String tab){
    currentTab = tab;
  }

}
