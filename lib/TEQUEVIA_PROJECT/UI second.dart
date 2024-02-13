import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,useInheritedMediaQuery: true,
    home: secondui(),));
}
class secondui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.white,
            expandedHeight: 80,
            elevation: 0,
            pinned: true,floating: true,
            bottom:AppBar(backgroundColor: Colors.white,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.black,),
                      Text("ATTENDENCE HISTORY",style: TextStyle(color: Colors.black),)
                    ],
                  ),
                )
              ],),
          ),SliverList(delegate: SliverChildListDelegate([
            SizedBox(height: 20,),
            Center(child: Container(child: Text("2024",style: TextStyle(fontSize: 15),),
            )),
            Row(
              children: [
                Card(child: Text("Jan",style: TextStyle(fontSize: 25),),color: Colors.blue,),
                SizedBox(width: 15,),
                Card(child: Text("Feb",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("Mar",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("Apr",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("May",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("Jun",style: TextStyle(fontSize: 25),),),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Card(child: Text("Jul",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("aug",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("Sep",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("Oct",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("Nov",style: TextStyle(fontSize: 25),),),
                SizedBox(width: 15,),
                Card(child: Text("Dec",style: TextStyle(fontSize: 25),),),
              ],
            ),
            SizedBox(height: 30,),
            Center(child: Container(child: Text("JANUARY 2024",style: TextStyle(fontSize: 20),),),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 280),
              child: Card(child: Text("00 hour 00 minutes"),color: Colors.yellow[200],),
            ),
            SizedBox(height: 30,),
            Container(child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("Date:12-01-2024"),
                ),
              ],),
            ),
            Container(child:Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.image)),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text("Time:12.44 PM to on going"),

              ),],)),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 280),
              child: Card(child: Text("00 hour 00 minutes"),color: Colors.yellow[200],),
            ),
            SizedBox(height: 30,),
            Container(child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("Date:12-01-2024"),
                ),
              ],),
            ),
            Container(child:Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.image)),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text("Time:12.44 PM to on going"),

              ),],)),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 280),
              child: Card(child: Text("00 hour 00 minutes"),color: Colors.yellow[200],),
            ),
            SizedBox(height: 30,),
            Container(child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.location_on)),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("Date:12-01-2024"),
                ),
              ],),
            ),
            Container(child:Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.image)),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text("Time:12.44 PM to on going"),

              ),],)),

          ])
          )
        ],),);
  }

}