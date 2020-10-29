import 'package:every/event/stores/event_store.dart';
import 'package:every/event/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailsScreen extends StatefulWidget {
  final EventStore eventStore;

  const DetailsScreen(this.eventStore);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> tittles = ["PEOPLE", "TOPICS", "NOTIFICATIONS", "ASSETS"];
    EventStore eventStore = widget.eventStore;

    return Scaffold(
      body: BgStack(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: HexColor("2C2929"),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Agenda: Weekly Product Meeting ",
                      style: TextStyle(
                          color: HexColor("2C2929"),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: Text(
                "Details",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: ListTittles(tittles),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(
                    builder: (_) {
                      return Text(
                        "${eventStore.people.length} attendees",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      );
                    },
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: HexColor("d5cced")),
                    ),
                    child: InkWell(
                      onTap: () {
                        eventStore.addPeopleInEvent();
                      },
                      child: Icon(
                        Icons.add,
                        color: HexColor("7041EE"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Observer(
                  builder: (_) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: PeopleCard(eventStore.people),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
