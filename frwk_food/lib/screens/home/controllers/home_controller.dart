import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  String currentTab = "Foods";

  @action
  void setTab(String tab) {
    currentTab = tab;
  }

  List<String> titles = [
    "Foods",
    "Drinks",
    "Snacks",
    "Sauce",
    "Desserts",
    "BBQ",
  ];


}
