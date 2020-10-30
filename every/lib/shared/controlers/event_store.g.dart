// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EventStore on _EventStore, Store {
  final _$eventsAtom = Atom(name: '_EventStore.events');

  @override
  ObservableList<Event> get events {
    _$eventsAtom.reportRead();
    return super.events;
  }

  @override
  set events(ObservableList<Event> value) {
    _$eventsAtom.reportWrite(value, super.events, () {
      super.events = value;
    });
  }

  final _$peopleAtom = Atom(name: '_EventStore.people');

  @override
  ObservableList<Person> get people {
    _$peopleAtom.reportRead();
    return super.people;
  }

  @override
  set people(ObservableList<Person> value) {
    _$peopleAtom.reportWrite(value, super.people, () {
      super.people = value;
    });
  }

  final _$_EventStoreActionController = ActionController(name: '_EventStore');

  @override
  void changeCheck(int index) {
    final _$actionInfo = _$_EventStoreActionController.startAction(
        name: '_EventStore.changeCheck');
    try {
      return super.changeCheck(index);
    } finally {
      _$_EventStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPeople() {
    final _$actionInfo = _$_EventStoreActionController.startAction(
        name: '_EventStore.addPeople');
    try {
      return super.addPeople();
    } finally {
      _$_EventStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPeopleInEvent() {
    final _$actionInfo = _$_EventStoreActionController.startAction(
        name: '_EventStore.addPeopleInEvent');
    try {
      return super.addPeopleInEvent();
    } finally {
      _$_EventStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
events: ${events},
people: ${people}
    ''';
  }
}
