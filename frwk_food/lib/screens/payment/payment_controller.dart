import 'package:frwk_food/models/food_model.dart';
import 'package:mobx/mobx.dart';

part 'payment_controller.g.dart';

class PaymentController = _PaymentController with _$PaymentController;

abstract class _PaymentController with Store {
  @observable
  double value = 0;

  @observable
  bool card = false;

  @observable
  bool bank = false;

  @observable
  bool door = false;

  @observable
  bool pickup = false;

  @action
  void setValue(List<Food> cart) {
    for (Food food in cart) {
      value = value + (food.price * food.quantity);
      print(value.toStringAsFixed(2));
    }
  }

  @action
  void dotPress(String op) {
    if (op == 'card') {
      card = !card;
      if (bank && card) {
        bank = !bank;
      }
    }
    if (op == 'bank') {
      bank = !bank;
      if (bank && card) {
        card = !card;
      }
    }
    if (op == 'door') {
      door = !door;
      if (pickup && door) {
        pickup = !pickup;
      }
    }
    if (op == 'pickup') {
      pickup = !pickup;
      if (pickup && door) {
        door = !door;
      }
    }
  }
}
