import 'package:flutter/material.dart';

class snackProvider extends ChangeNotifier {
  List<String> snackList = [];

  void addToWishList(String item) {
    snackList.add(item);
    notifyListeners();
  }

  void removeFromWishList(String item) {
    snackList.remove(item);
    notifyListeners();
  }
}