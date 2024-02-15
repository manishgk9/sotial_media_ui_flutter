import 'package:attachapp/pages/search_data.dart';
import 'package:flutter/material.dart';

class SearchIconPage extends StatelessWidget {
  const SearchIconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.grey[300]),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Container(
                  height: 32,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[500], fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SearchResult(),
    );
  }
}
