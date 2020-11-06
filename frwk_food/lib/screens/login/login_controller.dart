import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {

  @observable
  String currentTab = "Login";

  @action
  void setTab(String tab){
    currentTab = tab;
  }

}