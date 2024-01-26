import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/foodmenu_page/menu.dart';

 void main(){runApp(MaterialApp(home: services(),
 useInheritedMediaQuery: true,));}
class services extends StatefulWidget
{
  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow[200],
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>foodmenu()));
            }, child: Text("Food menu",style: GoogleFonts.aclonica(fontSize: 40,color: Colors.black),)),
          )),
          SizedBox(height: 40,),
          TextButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpAlert()));
          }, child: Text("Help",style: GoogleFonts.aclonica(fontSize: 40,color: Colors.black),)),
          SizedBox(height: 40,),
          TextButton(onPressed: (){}, child: Text("Bill",style: GoogleFonts.aclonica(fontSize: 40,color: Colors.black),)),
          SizedBox(height: 40,),
          TextButton(onPressed: (){}, child: Text("clean",style: GoogleFonts.aclonica(fontSize: 40,color: Colors.black),)),
        ],
      ),
    );
  }
}