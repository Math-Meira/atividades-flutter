import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/screens/search/search_controller.dart';
import 'package:frwk_food/shared/components.dart';
import 'package:frwk_food/shared/controllers/cardapio/cardapio_controller.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
  final String search;

  SearchScreen({@required this.search});
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController textController = TextEditingController();
  SearchController searchController = SearchController();

  bool first = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (first) {
      searchController.findFood(widget.search);
    }
  }

  @override
  Widget build(BuildContext context) {
    searchController.cardapio =
        Provider.of<CardapioController>(context).cardapio;
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(36),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      onSubmitted: (text) {
                        searchController.findFood(text);
                        first = false;
                      },
                      onChanged: (text) {
                        searchController.findFood(text);
                        first = false;
                      },
                      controller: textController,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search"),
                      cursorColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) {
                return searchController.suggestions.isEmpty ||
                        searchController.suggestions == []
                    ? Container(
                        color: Colors.amber,
                        height: 200,
                        width: 300,
                      )
                    : Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 16, left: 18, right: 18),
                          child: GridView.count(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 3,
                            children: cardTiles(
                                searchController.suggestions,
                                EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 8),
                                context,
                                pop: true),
                          ),
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
