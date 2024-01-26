import 'package:flutter/material.dart';

class vegListProvider extends ChangeNotifier {
  List<String> vegList = [];

  void addToWishList(String item) {
    vegList.add(item);
    notifyListeners();
  }

  void removeFromWishList(String item) {
    vegList.remove(item);
    notifyListeners();
  }
}