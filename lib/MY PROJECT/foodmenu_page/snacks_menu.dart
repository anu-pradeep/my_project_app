import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/menu.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/snack_wishlist.dart';
// void main(){runApp(MaterialApp(home: snacksmenu(),));}
import 'package:flutter/material.dart';
class snacksmenu extends StatefulWidget {
  @override
  State<snacksmenu> createState() => _snackmenuState();
}

class _snackmenuState extends State<snacksmenu> {
  int index = 1;
  List<String> snacklist = [];
  var snacks = ["Toasted bread", "Burger", "Sandwich", "Chicken roll", "Pazhampori", "Pathiri", "Bonda", "Kayappam", "Neyvada", "Ullivada", "Uzhunnu vada", "Parippu vada", "Keseri", "Appam"];
  List<String> filteredSnacks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Center(child: Text(" Spicy & crispy snacks", style: GoogleFonts.aclonica(color: Colors.black))),
            backgroundColor: Colors.yellow[200],
            pinned: true,
            expandedHeight: 130,
            floating: true,
            bottom: AppBar(
              backgroundColor: Colors.yellow[200],
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadiusDirectional.circular(100)),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      filteredSnacks = snacks.where((snack) => snack.toLowerCase().contains(value.toLowerCase())).toList();
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    hintText: "Search your snacks here",
                    hintStyle: GoogleFonts.aclonica(),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text(filteredSnacks.isNotEmpty ? filteredSnacks[index] : snacks[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            final selectedSnack = filteredSnacks.isNotEmpty ? filteredSnacks[index] : snacks[index];
                            if (snacklist.contains(selectedSnack)) {
                              snacklist.remove(selectedSnack);
                            } else {
                              snacklist.add(selectedSnack);
                            }
                          });
                        },
                        icon: Icon(Icons.favorite),
                        label: Text(
                          snacklist.contains(filteredSnacks.isNotEmpty ? filteredSnacks[index] : snacks[index]) ? "Remove" : "Add",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[100]),
                      ),
                    ],
                  ),
                );
              },
              childCount: filteredSnacks.isNotEmpty ? filteredSnacks.length : snacks.length,
            ),
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
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => foodmenu()));
              },
              icon: Icon(Icons.home_filled),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => snacklistScreen(snacklist: snacklist,)));
              },
              icon: Icon(Icons.shopping_cart),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.search),),
            label: "Search",
          ),
        ],
      ),
    );
  }
}

// class snacksmenu extends StatefulWidget{
//   @override
//   State<snacksmenu> createState() => _snackmenuState();
// }
//
// class _snackmenuState extends State<snacksmenu> {
//   int index=1;
//   List<String> snacklist = [];
//   var snacks=["Toasted bread","Burger","Sandwich","Chicken roll","Pazhampori","Pathiri","Bonda","Kayappam","Neyvada","Ullivada","Uzhunnu vada","Parippu vada","Keseri","Appam",];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: CustomScrollView(
//             slivers: [
//               SliverAppBar(title: Center(child: Text(" Spicy & crispy snacks",style: GoogleFonts.aclonica(color: Colors.black),)),backgroundColor: Colors.yellow[200],
//                 pinned: true,expandedHeight: 130,floating: true,
//                 bottom: AppBar(backgroundColor: Colors.yellow[200],
//                   elevation: 0,
//                   title: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,  borderRadius: BorderRadiusDirectional.circular(100)),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.search,color: Colors.black,),
//                           hintText: "Search your snacks here",hintStyle: GoogleFonts.aclonica(),
//                           border: InputBorder.none),
//                     ),
//                   ),
//
//                 ),
//               ),
//               SliverList(
//                 delegate: SliverChildBuilderDelegate(
//                       (BuildContext context, int index) {
//                     return ListTile(
//                       title: Text(snacks[index]),
//                       trailing:Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           ElevatedButton.icon(onPressed: (){
//                             setState(() {
//                               if(snacklist.contains(snacks[index]))
//                                 {
//                                   snacklist.remove(snacks[index]);
//                                 }
//                               else
//                                 {
//                                   snacklist.add(snacks[index]);
//                                 }
//                             });
//                           },
//                             icon: Icon(Icons.favorite),
//                               label: Text(snacklist.contains(snacks[index])?"Remove":"Add",style: TextStyle(color: Colors.black),),
//                           style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[100]),),
//                         ],
//                       )
//                     );
//                   },
//                   childCount: 14,
//                 ),
//               ),
//             ]),
//         bottomNavigationBar: BottomNavigationBar(
//             backgroundColor: Colors.yellow[200],
//             selectedItemColor: Colors.red,
//             unselectedItemColor: Colors.black,
//             currentIndex: index,
//             type: BottomNavigationBarType.fixed,
//             onTap: (tapindex)
//             {
//               setState(() {
//                 index=tapindex;
//               });
//             },
//             items: [
//              BottomNavigationBarItem(icon: IconButton(onPressed: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context)=>foodmenu()));
//              }, icon: Icon(Icons.home_filled),),label: "Home"),
//               BottomNavigationBarItem(icon: IconButton(onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>snacklistScreen(snacklist:snacklist,)));
//               }, icon: Icon(Icons.shopping_cart),),label: "Cart"),
//             BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.search),),label: "Search"),
//             ])
//     );}}