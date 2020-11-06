import 'package:frwk_food/models/food_model.dart';
import 'package:mobx/mobx.dart';

part 'search_controller.g.dart';

class SearchController = _SearchController with _$SearchController;

abstract class _SearchController with Store {
  List<Food> cardapio = List<Food>();

  @observable
  ObservableList<Food> suggestions = ObservableList.of([]);

  @observable
  String seachText = "";

  @action
  void findFood(String text) {
    seachText = text;

    suggestions.clear();

    if (text != "" && text != " ") {
      for (Food food in cardapio) {
        String name = food.name.toLowerCase();
        if (name.contains(seachText.toLowerCase())) {
          suggestions.add(food);
        }
      }
    }
  }
}
