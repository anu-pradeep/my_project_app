import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/drink%20wishlist.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/drinks_menu_.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/non_veg%20menu.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/snacks_menu.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/veg_menu.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/wishlist.dart';
import 'package:my_project_app/MY%20PROJECT/service_page.dart';

void main(){runApp(MaterialApp(home: foodmenu(),debugShowCheckedModeBanner: false,));}
class foodmenu extends StatefulWidget
{
  @override
  State<foodmenu> createState() => _foodmenuState();
}
// class _foodmenuState extends State<foodmenu> {
//   var items = [
//     "Puttu", "Dosa", "Uppumav", "Pathiri", "Idli", "Idiyappam", "Poratta", "Vellappam", "Chick pea curry", "Fish curry", "Veg kuruma", "Sambar", "Mung bean", "Chicken biriyani", "Beef biriyani", "Mutton biriyani", "Egg biriyani", "Fish biriyani", "Chemmeen biriyani", "Neychor", "Chicken stew", "Beef stew", "Mutton stew", "Meals", "Broasted chicken", "Alphaham", "Shavaya", "Chilli chicken", "Chicken tikka", "Chicken 65",
//     "Tea", "Coffee", "Bru coffee", "Green tea", "Lemon tea", "Bru coffee", "Lime juice", "Lime soda", "Mint lime", "Mojito", "Apple juice", "Mango juice", "Pineapple juice", "Strawberry juice", "Papaya juice", "Cucumber juice", "Chikku shake", "Falooda", "Avil milk", "Sharja shake",
//     "Toasted bread", "Burger", "Sandwich", "Chicken roll", "Pazhampori", "Pathiri", "Bonda", "Kayappam", "Neyvada", "Ullivada", "Uzhunnu vada", "Parippu vada", "Keseri", "Appam",
//   ];
//   int index = 1;
//   List<String> wishlist = [];
//   List<String> filteredItems = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             backgroundColor: Colors.yellow[300],
//             floating: true,
//             pinned: true,
//             expandedHeight: 70,
//             bottom: AppBar(
//               backgroundColor: Colors.yellow[300],
//               elevation: 0,
//               title: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadiusDirectional.circular(100),
//                 ),
//                 child: TextFormField(
//                   onChanged: (value) {
//                     setState(() {
//                       if (value.isEmpty) {
//                         // If the search bar is empty, show the full list
//                         filteredItems = List.from(items);
//                       } else {
//                         // If the search bar has text, filter the items
//                         filteredItems = items
//                             .where((item) => item.toLowerCase().contains(value.toLowerCase()))
//                             .toList();
//                       }
//                     });
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.search, color: Colors.black),
//                     hintText: "Search your taste here",
//                     hintStyle: GoogleFonts.aclonica(),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate([
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left:2,top: 15),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.lightGreen[200],
//                         border: Border.all(color: Colors.black26),
//                         borderRadius: BorderRadius.all(Radius.circular(20),),
//                       ),child: Center(child: TextButton(onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>drinkmenu()));
//                     },child:Text("Drinks",style: GoogleFonts.aclonica(color: Colors.black45),),)),height: 30,width: 100,
//
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left:2,top: 15),
//                     child: Container(decoration: BoxDecoration(color: Colors.lightGreen[200],
//                       border: Border.all(color: Colors.black26),
//                       borderRadius: BorderRadius.all(Radius.circular(20),),
//                     ),child: Center(child: TextButton(onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>snacksmenu()));
//                     },child:Text("Snacks",style: GoogleFonts.aclonica(color: Colors.black45),),)),height: 30,width: 100,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 15,left:2),
//                     child: Container(decoration: BoxDecoration(
//                       color: Colors.lightGreen[200],
//                       border: Border.all(color: Colors.black26),
//                       borderRadius: BorderRadius.all(Radius.circular(20),),
//                     ),child: Center(child: TextButton(onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>nonvegssmenu()));
//                     },child:Text("Non-veg",style: GoogleFonts.aclonica(color: Colors.black45),),)),height: 30,width: 100,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left:2,top: 15),
//                     child: Container(decoration: BoxDecoration(
//                       color: Colors.lightGreen[200],
//                       border: Border.all(color: Colors.black26),
//                       borderRadius: BorderRadius.all(Radius.circular(20),),
//                     ),child: Center(child: TextButton(onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>vegssmenu()));
//                     },child:Text("Veg",style: GoogleFonts.aclonica(color: Colors.black45),),)),height: 30,width: 100,
//                     ),
//                   ),
//                 ],
//               ),
//               Divider(),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: filteredItems.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(filteredItems[index]),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ElevatedButton.icon(
//                           onPressed: () {
//                             setState(() {
//                               if (wishlist.contains(filteredItems[index])) {
//                                 wishlist.remove(filteredItems[index]);
//                               } else {
//                                 wishlist.add(filteredItems[index]);
//                               }
//                             });
//                           },
//                           icon: Icon(Icons.favorite),
//                           label: Text(
//                             wishlist.contains(filteredItems[index])
//                                 ? "Remove"
//                                 : "Add",
//                             style: TextStyle(color: Colors.black),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.yellow[100],
//                           ),
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ]),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.yellow[200],
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.black,
//         currentIndex: index,
//         type: BottomNavigationBarType.fixed,
//         onTap: (tapindex) {
//           setState(() {
//             index = tapindex;
//           });
//         },
//         items: [
//       BottomNavigationBarItem(icon: IconButton(onPressed: (){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>services()));
//     },
//       icon: Icon(Icons.home_filled),),label: "Home"),
//     BottomNavigationBarItem(icon: IconButton(onPressed: (){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistScreen(wishlist:wishlist,)));
//     }, icon: Icon(Icons.shopping_cart),),label: "Cart"),
//     BottomNavigationBarItem(icon:IconButton(onPressed: (){
//     // Navigator.push(context, MaterialPageRoute(builder: (context)=>maincart()));
//     },
//     icon: Icon(Icons.card_giftcard_sharp),),label: "Orders"),
//
//     ],
//       ),
//     );
//   }
// }
class _foodmenuState extends State<foodmenu> {
  var items = [
    "Puttu", "Dosa", "Uppumav", "Pathiri", "Idli", "Idiyappam", "Poratta", "Vellappam", "Chick pea curry", "Fish curry", "Veg kuruma", "Sambar", "Mung bean", "Chicken biriyani", "Beef biriyani", "Mutton biriyani", "Egg biriyani", "Fish biriyani", "Chemmeen biriyani", "Neychor", "Chicken stew", "Beef stew", "Mutton stew", "Meals", "Broasted chicken", "Alphaham", "Shavaya", "Chilli chicken", "Chicken tikka", "Chicken 65",
    "Tea", "Coffee", "Bru coffee", "Green tea", "Lemon tea", "Bru coffee", "Lime juice", "Lime soda", "Mint lime", "Mojito", "Apple juice", "Mango juice", "Pineapple juice", "Strawberry juice", "Papaya juice", "Cucumber juice", "Chikku shake", "Falooda", "Avil milk", "Sharja shake",
    "Toasted bread", "Burger", "Sandwich", "Chicken roll", "Pazhampori", "Pathiri", "Bonda", "Kayappam", "Neyvada", "Ullivada", "Uzhunnu vada", "Parippu vada", "Keseri", "Appam",
  ];
  int index = 1;
  List<String> wishlist = [];
  TextEditingController searchController = TextEditingController();

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
                  borderRadius: BorderRadiusDirectional.circular(100),
                ),
                child: TextFormField(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    hintText: "Search your taste here",
                    hintStyle: GoogleFonts.aclonica(),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:2,top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[200],
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                      ),child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>drinkmenu()));
                    },child:Text("Drinks",style: GoogleFonts.aclonica(color: Colors.black45),),)),height: 30,width: 100,

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:2,top: 15),
                    child: Container(decoration: BoxDecoration(color: Colors.lightGreen[200],
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>snacksmenu()));
                    },child:Text("Snacks",style: GoogleFonts.aclonica(color: Colors.black45),),)),height: 30,width: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left:2),
                    child: Container(decoration: BoxDecoration(
                      color: Colors.lightGreen[200],
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>nonvegssmenu()));
                    },child:Text("Non-veg",style: GoogleFonts.aclonica(color: Colors.black45),),)),height: 30,width: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:2,top: 15),
                    child: Container(decoration: BoxDecoration(
                      color: Colors.lightGreen[200],
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>vegssmenu()));
                    },child:Text("Veg",style: GoogleFonts.aclonica(color: Colors.black45),),)),height: 30,width: 100,
                    ),
                  ),
                ],
              ),
              Divider(),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  if (searchController.text.isEmpty ||
                      items[index]
                          .toLowerCase()
                          .contains(searchController.text.toLowerCase())) {
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
                              wishlist.contains(items[index])
                                  ? "Remove"
                                  : "Add",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow[100],
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return Container(); // Hidden if not matching the search
                  }
                },
              ),
            ]),
          ),
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
          BottomNavigationBarItem(icon: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>services()));
          },
            icon: Icon(Icons.home_filled),),label: "Home"),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistScreen(wishlist: wishlist,)));
          }, icon: Icon(Icons.shopping_cart),),label: "Cart"),
          BottomNavigationBarItem(icon:IconButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>maincart()));
          },
            icon: Icon(Icons.card_giftcard_sharp),),label: "Orders"),

        ],
      ),
    );
  }
}
