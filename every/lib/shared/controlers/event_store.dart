import 'package:every/models/event_model.dart';
import 'package:mobx/mobx.dart';

part 'event_store.g.dart';

class EventStore = _EventStore with _$EventStore;

abstract class _EventStore with Store {
  @observable
  ObservableList<Event> events = ObservableList<Event>.of([]);

  @observable
  ObservableList<Person> people = ObservableList<Person>.of([]);

  @action
  void changeCheck(int index) {
    Event event = events[index];
    event.value = !event.value;

    events.removeAt(index);
    events.insert(index, event);
  }

  @action
  void addPeople() {
    Person person = Person(
        name: "Fulano",
        function: "Senior Product Designer",
        urlPhoto:
            "https://cdn.pixabay.com/photo/2018/03/31/06/31/dog-3277416_1280.jpg");

    people.add(person);
  }

  @action
  void addPeopleInEvent() {
    Person person = Person(
        name: "Beltrano",
        function: "Senior Product Designer",
        urlPhoto:
            "https://cdn.pixabay.com/photo/2019/03/01/10/03/cat-4027636_1280.jpg");

    people.add(person);
  }
}
