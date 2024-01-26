import 'package:flutter/material.dart';

class nonvegProvider extends ChangeNotifier {
  List<String> nonvegList = [];

  void addToWishList(String item) {
    nonvegList.add(item);
    notifyListeners();
  }

  void removeFromWishList(String item) {
    nonvegList.remove(item);
    notifyListeners();
  }
}