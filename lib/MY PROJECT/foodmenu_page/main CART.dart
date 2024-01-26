import 'package:flutter/material.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/drink%20wishlist.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/non%20veg_wishlist.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/snack_wishlist.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/wishlist.dart';

void main() {
  runApp(MaterialApp(
    home: maincart(),
  ));
}

class maincart extends StatelessWidget {
  List<String> wishlist = [];
  List<String> drinklist = [];
  List<String> snacklist = [];
  List<String> vegList = [];
  List<String> nonvegList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: ListView(
        children: [
          Container(
            child: WishlistScreen(wishlist: wishlist),
          ),
          Container(
            child: drinklistScreen(drinklist: drinklist),
          ),
          Container(
            child: snacklistScreen(snacklist: snacklist),
          ),
          Container(
            child: drinklistScreen(drinklist: drinklist),
          ),
          Container(
            child: nonvegScreen(nonvegList: nonvegList),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.darT';
// import 'package:my_project_app/MY%20PROJECT/foodmenu_page/drink%20wishlist.dart';
// import 'package:my_project_app/MY%20PROJECT/foodmenu_page/non%20veg_wishlist.dart';
// import 'package:my_project_app/MY%20PROJECT/foodmenu_page/snack_wishlist.dart';
// import 'package:my_project_app/MY%20PROJECT/foodmenu_page/wishlist.dart';
// // void main(){runApp(MaterialApp(home: maincart(),));}
// class maincart extends StatelessWidget
// {
//   List<String> wishlist=[];
//   List<String> drinklist=[];
//   List<String> snacklist=[];
//   List<String> vegList=[];
//   List<String> nonvegList=[];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             WishlistScreen(wishlist:wishlist,),
//             drinklistScreen(drinklist:drinklist,),
//             snacklistScreen(snacklist: snacklist),
//             drinklistScreen(drinklist: drinklist),
//             nonvegScreen(nonvegList: nonvegList),
//
//           ],
//         ),
//       ),
//     );
//   }
//
// }