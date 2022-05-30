// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  var searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: FloatingActionButton(
                  backgroundColor: Colors.teal[600],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  onPressed: () {},
                  child: Icon(
                    Icons.manage_search,
                  ),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: 'Hint Text',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                // filled: true,
                contentPadding: EdgeInsets.all(16),
              ),
              controller: searchTextController,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    searchTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchTextController.dispose();
  }
}
