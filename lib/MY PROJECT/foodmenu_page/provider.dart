import 'package:flutter/material.dart';

class WishListProvider extends ChangeNotifier {
  List<String> wishList = [];

  void addToWishList(String item) {
    wishList.add(item);
    notifyListeners();
  }

  void removeFromWishList(String item) {
    wishList.remove(item);
    notifyListeners();
  }
}