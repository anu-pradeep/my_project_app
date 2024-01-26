import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';

class veglistScreen extends StatelessWidget {
  final List<String> vegList;

  veglistScreen({required this.vegList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow[200],
        title: Text("Wishlist",style: GoogleFonts.aclonica(color: Colors.black),),
        actions: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: ElevatedButton.icon(onPressed: (){},
                  icon: Icon(Icons.wallet_giftcard_outlined,color: Colors.black,),
                  label:Text("Confirm order",style: GoogleFonts.aclonica(color: Colors.black),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),),
              ),
            ],
          )
          // ElevatedButton(onPressed: (){}, child: Text("Confirm your order"))
        ],
      ),
      body: ListView.builder(
        itemCount: vegList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vegList[index]),
          );
        },

      ),
    );
  }
}
