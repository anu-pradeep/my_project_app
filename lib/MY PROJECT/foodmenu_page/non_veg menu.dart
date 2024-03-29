import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/menu.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/non%20veg_wishlist.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/wishlist.dart';
void main(){runApp(MaterialApp(home: nonvegssmenu(),));}
class nonvegssmenu extends StatefulWidget{
  @override
  State<nonvegssmenu> createState() => _nonvegiesmenuState();
}

class _nonvegiesmenuState extends State<nonvegssmenu> {
  int index=1;
  List<String> filterednonveg=[];
  List<String> nonveglist = [];
  var nonveg=["Chicken biriyani","Beef biriyani","Mutton biriyani","Egg biriyani","Fish biriyani","Chemmeen biriyani","Neychor","Chicken stew","Beef stew","Mutton stew","Broasted chicken","Alpaham","Shavaya","Chilli chikken","Chicken tikka","Chicken 65","Egg roast","Chemmeen roast","Kada roast","Beef fry"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverAppBar(title: Center(child: Text(" Non-vegetarian corner",style: GoogleFonts.aclonica(color: Colors.black),)),backgroundColor: Colors.yellow[200],
                pinned: true,expandedHeight: 130,floating: true,
                bottom: AppBar(backgroundColor: Colors.yellow[200],
                  elevation: 0,
                  title: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,  borderRadius: BorderRadiusDirectional.circular(100)),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          filterednonveg=nonveg.where((nonveg) => nonveg.toLowerCase().contains(value.toLowerCase())).toList();
                        });
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.black,),
                          hintText: "Find your Non-veg varieties here",hintStyle: GoogleFonts.aclonica(),
                          border: InputBorder.none),
                    ),
                  ),

                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return ListTile(
                      title: Text(filterednonveg.isNotEmpty ?filterednonveg[index]:nonveg[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton.icon(onPressed: (){
                            setState(() {
                              final selectednonveg = filterednonveg.isNotEmpty ? filterednonveg[index] : nonveg[index];
                              if(nonveglist.contains(selectednonveg))
                                {
                                  nonveglist.remove(selectednonveg);
                                }
                              else
                                {
                                  nonveglist.add(selectednonveg);
                                }
                            });
                          }, icon: Icon(Icons.favorite),
                              label: Text(nonveglist.contains(filterednonveg.isNotEmpty? filterednonveg[index]: nonveg[index])?"Remove":"Add",style: TextStyle(color: Colors.black),),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[100]),)
                        ],
                      )
                    );
                  },
                  childCount: filterednonveg.isNotEmpty?filterednonveg.length:nonveg.length,
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistScreen(wishlist: nonveglist,)));
              }, icon: Icon(Icons.shopping_cart),
              ),label: "Cart"),
              BottomNavigationBarItem(icon:IconButton(onPressed: (){},
                icon: Icon(Icons.card_giftcard_sharp),),label: "Orders"),

              // BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.search),),label: "Search")
            ])
    );}}