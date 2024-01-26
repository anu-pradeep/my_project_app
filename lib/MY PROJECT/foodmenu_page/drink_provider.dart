import 'package:flutter/material.dart';

class drinkProvider extends ChangeNotifier {
  List<String> drinkList = [];

  void addToWishList(String item) {
    drinkList.add(item);
    notifyListeners();
  }

  void removeFromWishList(String item) {
    drinkList.remove(item);
    notifyListeners();
  }
}