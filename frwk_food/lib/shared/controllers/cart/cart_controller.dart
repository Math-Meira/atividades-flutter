import 'package:flutter/cupertino.dart';
import 'package:frwk_food/models/food_model.dart';
import 'package:mobx/mobx.dart';

part 'cart_controller.g.dart';

class CartController = _CartController with _$CartController;

abstract class _CartController with Store {
  @observable
  ObservableList<Food> cart = ObservableList<Food>.of([]);

  @observable
  int changing = 0;

  @action
  void addFood(Food food) {
    food.quantity++;

    if (cart.contains(food)) {
      for (int i = 0; i < cart.length; i++) {
        if (cart[i] == food) {
          cart.removeAt(i);
          cart.insert(i, food);
        }
      }
    } else {
      cart.add(food);
    }
  }

  @action
  void addRemFood({@required int index, @required int op}) {
    changing = 1;
    Food food = cart[index];
    if (op == 1) {
      food.quantity++;
    } else {
      food.quantity--;
    }
    cart.removeAt(index);

    if (food.quantity > 0) {
      cart.insert(index, food);
    }
    changing = 0;
  }

  @action
  void removeFromCart(int index) {
    changing = 1;
    cart[index].quantity = 0;
    cart.removeAt(index);
    changing = 0;
  }
}
