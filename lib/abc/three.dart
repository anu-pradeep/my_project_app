import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/wishlist.dart';
//
void main() {
  runApp(MaterialApp(
    home: FoodMenu(),
    debugShowCheckedModeBanner: false,
  ));
}
//
class FoodMenu extends StatefulWidget {
  @override
 State<FoodMenu> createState() => _FoodMenuState();
}
//
class _FoodMenuState extends State<FoodMenu> {
  var items = [
    "Puttu", "Dosa", "Uppumav", "Pathiri", "Idli", "Idiyappam", "Poratta",
    "Vellappam", "Chick pea curry", "Fish curry", "Veg kuruma", "Sambar",
    "Mung bean", "Chicken biriyani", "Beef biriyani", "Mutton biriyani",
    "Egg biriyani", "Fish biriyani", "Chemmeen biriyani", "Neychor",
    "Chicken stew", "Beef stew", "Mutton stew", "Meals", "Broasted chicken",
    "Alphaham", "Shavaya", "Chilli chikken", "Chicken tikka", "Chicken 65"
  ];
  int index = 1;
  List<String> wishlist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.yellow[300],
            floating: true,
            pinned: true,
            expandedHeight: 70,
            bottom: AppBar(
              backgroundColor: Colors.yellow[300],
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(100)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: "Search your drinks here",
                      hintStyle: GoogleFonts.aclonica(),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Row(
              children: [
                // ... (unchanged code)

                // Wishlist button
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue[200],
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WishlistScreen(wishlist: wishlist),
                            ),
                          );
                        },
                        child: Text(
                          "Wishlist",
                          style: GoogleFonts.aclonica(color: Colors.black45),
                        ),
                      ),
                    ),
                    height: 30,
                    width: 100,
                  ),
                ),
              ],
            ),
            Divider(),
            // ... (unchanged code)

            // Updated ListTile with Wishlist button
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            if (wishlist.contains(items[index])) {
                              wishlist.remove(items[index]);
                            } else {
                              wishlist.add(items[index]);
                            }
                          });
                        },
                        icon: Icon(Icons.favorite),
                        label: Text(
                          wishlist.contains(items[index]) ? "Remove" : "Add",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow[100],
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart),
                        label: Text(
                          "Cart",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow[100],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow[200],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "Orders"),
        ],
      ),
    );
  }
}