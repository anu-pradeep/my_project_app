import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/service_page.dart';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner: false,
  useInheritedMediaQuery: true,home: startbutton(),));}
class startbutton extends StatefulWidget
{
  @override
  State<startbutton> createState()=>buttonstate();
}
class buttonstate extends State<startbutton>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   backgroundColor:Colors.yellow[200],
     body: Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 300,left: 140),
           child: TextButton(onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>services()));
           },
               child: Text("Start",style: GoogleFonts.aclonica(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
          //style:ButtonStyle(//backgroundColor: Colors.purple),
           ),
         )
         ],
     ),
   );
  }

}