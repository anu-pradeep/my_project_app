import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/menu.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/veg_wishlist.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/wishlist.dart';
void main(){runApp(MaterialApp(home: vegssmenu(),));}
class vegssmenu extends StatefulWidget{
  @override
  State<vegssmenu> createState() => _vegiesmenuState();
}

class _vegiesmenuState extends State<vegssmenu> {
  int index=1;
  List<String> filteredveg=[];
  List<String> vegList=[];
  var veg=["Puttu","Dosa","Uppumav","Pathiri","Idli","Idiyappam","Poratta","Vellappam","Chick pea curry","Veg kuruma","Sambar","Mung bean","Meals"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverAppBar(title: Center(child: Text(" Vegetarian corner",style: GoogleFonts.aclonica(color: Colors.black),)),backgroundColor: Colors.yellow[200],
                pinned: true,expandedHeight: 130,floating: true,
                bottom: AppBar(backgroundColor: Colors.yellow[200],
                  elevation: 0,
                  title: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,  borderRadius: BorderRadiusDirectional.circular(100)),
                    child: TextField(
                      onChanged: (value){
                        setState(() {
                          filteredveg=veg.where((veg) => veg.toLowerCase().contains(value.toLowerCase())).toList();
                        });
    },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.black,),
                          hintText: "Find your veg varieties here",hintStyle: GoogleFonts.aclonica(),
                          border: InputBorder.none),
                    ),
                  ),

                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return ListTile(
                      title: Text(filteredveg.isNotEmpty?filteredveg[index]:veg[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton.icon(onPressed: (){
                            setState(() {
                              final selectedveg=filteredveg.isNotEmpty?filteredveg[index]:veg[index];
                              if(vegList.contains(selectedveg))
                                {
                                  vegList.remove(selectedveg);
                                }
                              else
                                {
                                  vegList.add(selectedveg);
                                }
                            });
                          },
                              icon: Icon(Icons.favorite),
                              label: Text(vegList.contains(filteredveg.isNotEmpty ? filteredveg[index]:veg[index])? "Remove":"Add",style: TextStyle(color: Colors.black),),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[100]),)
                        ],
                      )
                    );
                  },
                  childCount: filteredveg.isNotEmpty? filteredveg.length:veg.length,
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistScreen(wishlist:vegList,)));
              }, icon: Icon(Icons.shopping_cart),),label: "Cart"),
              BottomNavigationBarItem(icon:IconButton(onPressed: (){},
                icon: Icon(Icons.card_giftcard_sharp),),label: "Orders"),
            ])
    );}}