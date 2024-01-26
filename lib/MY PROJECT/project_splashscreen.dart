import 'dart:async';
import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner: false,home: appsplash(),
useInheritedMediaQuery: true,));}
class appsplash extends StatefulWidget
{
  @override
  State<appsplash> createState()=>_splashappstate();
}
class _splashappstate extends State<appsplash>
{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8), () {
      // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>adminregisttr ()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(//backgroundColor: Colors.purple[200],
      body: SafeArea(
          child: Container( decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.yellow,
                  Colors.white,
                ],
              )
          ),
          child:Column(
              children:[ TweenAnimationBuilder(
                  tween: Tween(begin: 10.0,end: 50.0),
                  duration: Duration(seconds: 5),
                  builder: (BuildContext context, value, child)
                  {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 250),
                        child: Text("_Foodtouch_",style: GoogleFonts.aclonica(fontSize: value),
                        ),
                      ),
                    );
                  }),
                Text("A Restaurant App",style: GoogleFonts.aclonica(),)
              ]
          )
      ),)
    );
  }

}
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       // backgroundColor: Colors.red[100],
  //       body:SafeArea(
  //         child:Container(color: Colors.purple[100],
  //           child: Column(
  //             children: [
  //                // Image.network(""),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 250),
  //                 child: Center(child: Text("_Food touch_",style: GoogleFonts.aclonica(fontSize: 40,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.purple[700]),)),
  //               ),
  //               Text("",style: GoogleFonts.abel(color: Colors.purple,fontSize: 20),),
  //             ],
  //           ),
  //         ),)
  //   );
  // }
