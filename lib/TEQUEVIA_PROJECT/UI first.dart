import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner: false,
  useInheritedMediaQuery: true,
  home: nameui(),));}
class nameui extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverAppBar(backgroundColor: Colors.white,
                expandedHeight: 80,
                elevation: 0,
                pinned: true,floating: true,
                bottom: AppBar(
                  backgroundColor: Colors.white,
                  title: Container(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search,color: Colors.blue,),
                          hintText: "Search complaint history",
                        ),
                      ),
                    ),),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate([
                SizedBox(height: 40,),
                Container(
                  child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              Card(child: Text("KB-1007   ",style: TextStyle(),),color: Colors.yellow[100],),
                              Card(child: Text("Escalated"),color: Colors.yellow[400],),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 220),
                              child: Text("MUHAMMED SHIBIL.K",style:TextStyle(color: Colors.blue)),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text("Kuttassri House,Elankur Post,Manjeri,Malappuram"),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 290),
                              child: Text("808977789"),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Text("Complaint : fan motor not working indoor"),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(children: [
                            Card(child: Text("KB-1007"),color: Colors.yellow[100],),
                            Card(child: Text("Escalated"),color: Colors.yellow,)
                          ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 220),
                          child: Text("MUHAMMED SHIBIL.K",style:TextStyle(color: Colors.blue)),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text("Kuttassri House,Elankur Post,Manjeri,Malappuram"),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 290),
                          child: Text("808977789"),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Text("Complaint : fan motor not working indoor"),
                        ),
                      ]),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Row(children: [
                    Card(child: Text("KB-1007"),color: Colors.yellow[100],),
                    Card(child: Text("Completed"),color: Colors.green,),
                  ]),
                ), SizedBox(height: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Text("MUHAMMED SHIBIL.K",style:TextStyle(color: Colors.blue)),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text("Kuttassri House,Elankur Post,Manjeri,Malappuram"),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 290),
                      child: Text("808977789"),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text("Complaint : fan motor not working indoor"),
                    ),


                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Row(children: [
                    Card(child: Text("KB-1007"),color: Colors.yellow[100],),
                    Card(child: Text("Completed"),color: Colors.green,),
                  ]),
                ), SizedBox(height: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Text("MUHAMMED SHIBIL.K",style:TextStyle(color: Colors.blue)),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text("Kuttassri House,Elankur Post,Manjeri,Malappuram"),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 290),
                      child: Text("808977789"),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text("Complaint : fan motor not working indoor"),
                    ),


                  ],
                ),SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Row(children: [
                    Card(child: Text("KB-1007"),color: Colors.yellow[100],),
                    Card(child: Text("Completed"),color: Colors.green,),
                  ]),
                ), SizedBox(height: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Text("MUHAMMED SHIBIL.K",style:TextStyle(color: Colors.blue)),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text("Kuttassri House,Elankur Post,Manjeri,Malappuram"),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 290),
                      child: Text("808977789"),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text("Complaint : fan motor not working indoor"),
                    ),


                  ],
                )
              ]),
              ),

            ]));
  }

}