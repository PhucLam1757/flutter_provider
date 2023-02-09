import 'package:flutter/cupertino.dart';

class SearchState with ChangeNotifier {
  String _searchText = '';

  String get searchText => _searchText;

  set searchText(String text) {
    _searchText = text;
    notifyListeners();
  }
}
