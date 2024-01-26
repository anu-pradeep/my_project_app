import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/drink%20wishlist.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/menu.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/wishlist.dart';
// void main(){
// runApp(MaterialApp(home: drinkmenu(),));}
class drinkmenu extends StatefulWidget{
  @override
  State<drinkmenu> createState() => _drinkmenuState();
}

class _drinkmenuState extends State<drinkmenu> {
  List<String> drinklist = [];
  // List<String> wishlist = [];
  int index=1;
  var drinks=["Tea","Coffee","Bru coffee","Green tea","Lemon tea","Chukk coffee","Lime juice","Lime soda","Mint lime","Mojito","Apple juice","Mango juice","Pineapple juice","Strawberry juice","Pappaya juice","Cucumber juice","chikku shake","Falooda","Avil milk","Sharja shake"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: Center(child: Text("Hot & cool drinks",style: GoogleFonts.aclonica(color: Colors.black),)),backgroundColor: Colors.yellow[200],
            pinned: true,expandedHeight: 80,floating: true,
      bottom: AppBar(backgroundColor: Colors.yellow[200],
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white,  borderRadius: BorderRadiusDirectional.circular(100)),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  hintText: "Search your taste here",hintStyle: GoogleFonts.aclonica(),
                  border: InputBorder.none),
            ),
          ),

        ),
      ),
    SliverList(
    delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
    return ListTile(
    title: Text(drinks[index]),
      trailing:Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton.icon(onPressed: (){
            setState(() {
              if(drinklist.contains(drinks[index]))
              // if(wishlist.contains(drinks[index]))
                {
                  drinklist.remove(drinks[index]);
                  // wishlist.remove(drinks[index]);
                }
              else{
                drinklist.add(drinks[index]);
              // wishlist.add(drinks[index]);
              }
            });
          },
              icon: Icon(Icons.favorite),
            label: Text(drinklist/*wishlist*/.contains(drinks[index])?"Remove":"Add",style: TextStyle(color: Colors.black),),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[100]),)
        ],
      )
    );
    },
    childCount: 20,
    ),
    ),
    ]),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.yellow[200],
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            onTap: (tapindex)
            {
              setState(() {
                index=tapindex;
              });
            },
            items: [
             BottomNavigationBarItem(icon: IconButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>foodmenu()));
             }, icon: Icon(Icons.home_filled),),label: "Home"),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>/*drinklistScreen(drinklist: drinklist*/
              drinklistScreen(drinklist:drinklist)));
            }, icon: Icon(Icons.shopping_cart),),label: "Cart"),
              BottomNavigationBarItem(icon:IconButton(onPressed: (){},
                icon: Icon(Icons.card_giftcard_sharp),),label: "Orders"),

              // BottomNavigationBarItem(icon: IconButton(onPressed: (){
              //
              // }, icon: Icon(Icons.search),),label: "Search"),
            ])
    );}}