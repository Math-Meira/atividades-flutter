import 'package:frwk_food/models/food_model.dart';
import 'package:mobx/mobx.dart';

part 'cardapio_controller.g.dart';

class CardapioController = _CardapioController with _$CardapioController;

abstract class _CardapioController with Store {
  @observable
  ObservableList<Food> cardapio = ObservableList<Food>.of([]);

  @action
  void setCardapio() {
    cardapio.add(
        Food(name: "Salmao grelhado", number: "N1,900", url: ImgFood().salmon));
    cardapio.add(
        Food(name: "Bife com aspargo", number: "N1,900", url: ImgFood().beef));
    cardapio
        .add(Food(name: "Pizza mista", number: "N1,900", url: ImgFood().pizza));
    cardapio.add(
        Food(name: "Eclair de creme", number: "N1,900", url: ImgFood().eclair));
  }

  @action
  void setFavorite(Food food) {
    for (int i = 0; i < cardapio.length; i++) {
      if (cardapio[i] == food) {
        food.favorite = !food.favorite;
        cardapio.removeAt(i);
        cardapio.insert(i, food);
      }
    }
  }
}
