import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';

class WishlistScreen extends StatelessWidget {
  final List<String> wishlist;

  WishlistScreen({required this.wishlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow[200],
        title: Text("Wishlist",style: GoogleFonts.aclonica(color: Colors.black),),
        // actions: [
        //   Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(top: 13),
        //         child: ElevatedButton.icon(onPressed: (){},
        //             icon: Icon(Icons.wallet_giftcard_outlined,color: Colors.black,),
        //             label:Text("Confirm order",style: GoogleFonts.aclonica(color: Colors.black),),
        //         style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),),
        //       ),
        //     ],
        //   )
        //   // ElevatedButton(onPressed: (){}, child: Text("Confirm your order"))
        // ],
      ),
      body: ListView.builder(
        itemCount: wishlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(wishlist[index]),
          );
        },

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        // showOrderReceivedMessage(context);
      },
      child:Icon(Icons.wallet_giftcard_rounded,color: Colors.black,),backgroundColor: Colors.yellow[300],),
    );
  }
  // void showOrderReceivedMessage(BuildContext context) {
  //   final snackBar = SnackBar(
  //     content: Text('Your order has been received successfully!',style: GoogleFonts.aBeeZee(),),
  //     duration: Duration(seconds: 5), // Adjust the duration as needed
  //   );
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }
}
// import 'package:flutter/material.darT';
//
// class Wishlist {
//   List<String> items = [];
// }
//
// class CombinedMenu extends StatefulWidget {
//   @override
//   State<CombinedMenu> createState() => _CombinedMenuState();
// }
//
// class _CombinedMenuState extends State<CombinedMenu> {
//   Wishlist wishlist = Wishlist();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Combined Menu'),
//       ),
//       body: ListView(
//         children: [
//           buildMenu('Vegetarian Corner', ["Puttu", "Dosa", "Uppumav", "Pathiri", "Idli", "Idiyappam", "Poratta", "Vellappam", "Chick pea curry", "Veg kuruma", "Sambar", "Mung bean", "Meals"]),
//           buildMenu('Non-vegetarian Corner', ["Chicken biriyani", "Beef biriyani", "Mutton biriyani", "Egg biriyani", "Fish biriyani", "Chemmeen biriyani", "Neychor", "Chicken stew", "Beef stew", "Mutton stew", "Broasted chicken", "Alpaham", "Shavaya", "Chilli chikken", "Chicken tikka", "Chicken 65", "Egg roast", "Chemmeen roast", "Kada roast", "Beef fry"]),
//           buildMenu('Hot & Cool Drinks', ["Tea", "Coffee", "Bru coffee", "Green tea", "Lemon tea", "Bru coffee", "Lime juice", "Lime soda", "Mint lime", "Mojito", "Apple juice", "Mango juice", "Pineapple juice", "Strawberry juice", "Pappaya juice", "Cucumber juice", "chikku shake", "Falooda", "Avil milk", "Sharja shake"]),
//           buildMenu('Spicy & Crispy Snacks', ["Toasted bread", "Burger", "Sandwich", "Chicken roll", "Pazhampori", "Pathiri", "Bonda", "Kayappam", "Neyvada", "Ullivada", "Uzhunnu vada", "Parippu vada", "Keseri", "Appam"]),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           navigateToWishlist();
//         },
//         child: Icon(Icons.shopping_cart),
//       ),
//     );
//   }
//
//   Widget buildMenu(String title, List<String> items) {
//     return ExpansionTile(
//       title: Text(title),
//       children: items.map((item) {
//         return ListTile(
//           title: Text(item),
//           trailing: ElevatedButton(
//             onPressed: () {
//               addToWishlist(item);
//             },
//             child: Text('Add'),
//           ),
//         );
//       }).toList(),
//     );
//   }
//
//   void addToWishlist(String item) {
//     setState(() {
//       wishlist.items.add(item);
//     });
//   }
//
//   void removeFromWishlist(String item) {
//     setState(() {
//       wishlist.items.remove(item);
//     });
//   }
//
//   void navigateToWishlist() {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistScreen(wishlist: wishlist)));
//   }
// }
//
// class WishlistScreen extends StatelessWidget {
//   final Wishlist wishlist;
//
//   WishlistScreen({required this.wishlist});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Wishlist'),
//       ),
//       body: ListView.builder(
//         itemCount: wishlist.items.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(wishlist.items[index]),
//             // You can provide a way to remove items from the wishlist here
//           );
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class Wishlist {
//   List<String> items = [];
// }
//
// class CombinedMenu extends StatefulWidget {
//   @override
//   State<CombinedMenu> createState() => _CombinedMenuState();
// }
//
// class _CombinedMenuState extends State<CombinedMenu> {
//   Wishlist wishlist = Wishlist();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Combined Menu'),
//       ),
//       body: ListView(
//         children: [
//           buildMenu('Vegetarian Corner', ["Puttu", "Dosa", "Uppumav", "Pathiri", "Idli", "Idiyappam", "Poratta", "Vellappam", "Chick pea curry", "Veg kuruma", "Sambar", "Mung bean", "Meals"]),
//           buildMenu('Non-vegetarian Corner', ["Chicken biriyani", "Beef biriyani", "Mutton biriyani", "Egg biriyani", "Fish biriyani", "Chemmeen biriyani", "Neychor", "Chicken stew", "Beef stew", "Mutton stew", "Broasted chicken", "Alpaham", "Shavaya", "Chilli chikken", "Chicken tikka", "Chicken 65", "Egg roast", "Chemmeen roast", "Kada roast", "Beef fry"]),
//           buildMenu('Hot & Cool Drinks', ["Tea", "Coffee", "Bru coffee", "Green tea", "Lemon tea", "Bru coffee", "Lime juice", "Lime soda", "Mint lime", "Mojito", "Apple juice", "Mango juice", "Pineapple juice", "Strawberry juice", "Pappaya juice", "Cucumber juice", "chikku shake", "Falooda", "Avil milk", "Sharja shake"]),
//           buildMenu('Spicy & Crispy Snacks', ["Toasted bread", "Burger", "Sandwich", "Chicken roll", "Pazhampori", "Pathiri", "Bonda", "Kayappam", "Neyvada", "Ullivada", "Uzhunnu vada", "Parippu vada", "Keseri", "Appam"]),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           addToWishlistFromAllMenus();
//         },
//         child: Icon(Icons.add_shopping_cart),
//       ),
//     );
//   }
//
//   Widget buildMenu(String title, List<String> items) {
//     return ExpansionTile(
//       title: Text(title),
//       children: items.map((item) {
//         return ListTile(
//           title: Text(item),
//           trailing: ElevatedButton.icon(
//             onPressed: () {
//               addToWishlist(item);
//             },
//             icon: Icon(Icons.add),
//             label: Text('Add'),
//           ),
//         );
//       }).toList(),
//     );
//   }
//
//   void addToWishlist(String item) {
//     setState(() {
//       wishlist.items.add(item);
//     });
//   }
//
//   void addToWishlistFromAllMenus() {
//     List<String> allItems = [];
//     allItems.addAll([
//       "Puttu", "Dosa", "Uppumav", "Pathiri", "Idli", "Idiyappam", "Poratta", "Vellappam", "Chick pea curry", "Veg kuruma", "Sambar", "Mung bean", "Meals",
//       "Chicken biriyani", "Beef biriyani", "Mutton biriyani", "Egg biriyani", "Fish biriyani", "Chemmeen biriyani", "Neychor", "Chicken stew", "Beef stew", "Mutton stew", "Broasted chicken", "Alpaham", "Shavaya", "Chilli chikken", "Chicken tikka", "Chicken 65", "Egg roast", "Chemmeen roast", "Kada roast", "Beef fry",
//       "Tea", "Coffee", "Bru coffee", "Green tea", "Lemon tea", "Bru coffee", "Lime juice", "Lime soda", "Mint lime", "Mojito", "Apple juice", "Mango juice", "Pineapple juice", "Strawberry juice", "Pappaya juice", "Cucumber juice", "chikku shake", "Falooda", "Avil milk", "Sharja shake",
//       "Toasted bread", "Burger", "Sandwich", "Chicken roll", "Pazhampori", "Pathiri", "Bonda", "Kayappam", "Neyvada", "Ullivada", "Uzhunnu vada", "Parippu vada", "Keseri", "Appam",
//     ]);
//
//     setState(() {
//       wishlist.items.addAll(allItems);
//     });
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: CombinedMenu(),
//   ));
// }
