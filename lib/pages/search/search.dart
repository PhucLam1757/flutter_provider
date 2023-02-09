import 'package:app_food_dx/data/product_state.dart';
import 'package:app_food_dx/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/search_state.dart';

class SearchPage extends StatelessWidget {
  static const routeName = 'search page';
  final List<ProductModel> keywords = productState.productionList;

  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (text) {
            searchState.searchText = text;
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'search...',
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: productState.productionList.length,
        itemBuilder: (context, index) {
          if (searchState.searchText.isNotEmpty &&
              !keywords[index]
                  .name
                  .toLowerCase()
                  .contains(searchState.searchText.toLowerCase())) {
            return Container();
          }
          return ListTile(
            title: Text(keywords[index].name),
          );
        },
      ),
    );
  }
}
