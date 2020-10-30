import 'package:every/models/event_model.dart';
import 'package:every/screens/details/details_screen.dart';
import 'package:every/shared/components/widgets.dart';
import 'package:every/shared/controlers/event_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hexcolor/hexcolor.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  EventStore eventStore = EventStore();

  @override
  void initState() {
    Event event = Event();
    event.tittle = "Retrospectiva";
    event.name = "Fulano";
    event.body = "HGKGKidsdjd";
    event.value = false;

    eventStore.events.add(event);

    Event evento = Event();
    evento.tittle = "Decoração";
    evento.name = "Beltrano";
    evento.body = "HGKGKidsdjd";
    evento.value = false;

    eventStore.events.add(evento);

    eventStore.addPeople();
    eventStore.addPeople();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgStack(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DetailsScreen(eventStore)));
                      },
                      child: Icon(
                        Icons.more_horiz,
                        color: HexColor("2C2929"),
                      ),
                    ),
                    alignment: Alignment.topRight,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Weekly Design Crit",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: HexColor("2C2929")),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sep 9, 2019",
                      style: TextStyle(fontSize: 18, color: HexColor("AAA9AB")),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    alignment: Alignment.centerLeft,
                    child: Observer(
                      builder: (_) {
                        return Text(
                          "Partecipants (${eventStore.people.length.toString()})",
                          style: TextStyle(
                              fontSize: 24,
                              color: HexColor("7041EE"),
                              fontWeight: FontWeight.w700),
                        );
                      },
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return eventStore.people.isEmpty
                          ? Container()
                          : Container(
                              margin: EdgeInsets.only(bottom: 16),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: peopleList(eventStore.people),
                                ),
                              ),
                            );
                    },
                  ),
                ],
              ),
              Observer(
                builder: (_) {
                  return eventStore.events.isEmpty || eventStore.events == null
                      ? Container()
                      : Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: eventStore.events.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Observer(
                                builder: (_) {
                                  return eventTile(
                                    event: eventStore.events[index],
                                    context: context,
                                    opacity: eventStore.events[index].value,
                                    child: check(
                                      value: eventStore.events[index].value,
                                      onChanged: () {
                                        eventStore.changeCheck(index);
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        );
                },
              ),
            ],
          )),
    );
  }
}

/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgStack(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(
                        Icons.more_horiz,
                        color: HexColor("2C2929"),
                      ),
                      alignment: Alignment.topRight,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Weekly Design Crit",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: HexColor("2C2929")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sep 9, 2019",
                        style:
                            TextStyle(fontSize: 18, color: HexColor("AAA9AB")),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Partecipants (${eventStore.people.length.toString()})",
                        style: TextStyle(
                            fontSize: 24,
                            color: HexColor("7041EE"),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Observer(
                      builder: (_) {
                        return eventStore.people.isEmpty
                            ? Container()
                            : Container(
                          margin: EdgeInsets.only(bottom: 16),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: peopleList(eventStore.people),
                                  ),
                                ),
                              );
                      },
                    ),
                  ],
                ),
                Observer(
                  builder: (_) {
                    return eventStore.events.isEmpty ||
                            eventStore.events == null
                        ? Container()
                        : Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: eventStore.events.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Observer(
                                  builder: (_) {
                                    return EventTile(
                                      event: eventStore.events[index],
                                      context: context,
                                      child: Check(
                                        value: eventStore.events[index].value,
                                        onChanged: () {
                                          eventStore.changeCheck(index);
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                        );
                  },
                ),
              ],
            )),
    );
  }*/
