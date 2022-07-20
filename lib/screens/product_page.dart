import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathonproj/screens/product_one.dart';


class ProductPage extends StatelessWidget {

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 18.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Add",
              contentPadding: EdgeInsets.symmetric(horizontal: 60.0),
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Color(0xFFD6D6D6),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0)
              )
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage:AssetImage("assets/images/avatar.png") ,
          )
        ],
      ),
      // backgroundColor: Colors.white,
    body: Column(
      children: [
        SizedBox(height: 20.0,),
        Text("5182 Items found for “Top”"),
        SizedBox(height: 40.0,),
        
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProductOnePage()),
    );
                },
                child: Image.asset("assets/images/pro1.png")),
              Image.asset("assets/images/pro2.png"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("\$ 25.99",style: TextStyle(color: Color(0xFFFE2550)),),
            Icon(Icons.favorite,color: Color(0xFFFE2550)),
            Text("\$ 25.99",style: TextStyle(color: Color(0xFFFE2550)),),
            Icon(Icons.favorite),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("White strap plunge top"),
            Text("Grey winter cardigan"),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage:AssetImage("assets/images/proOval1.png",) ,
              ),
            ),
            Text("Sandy Williams"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage:AssetImage("assets/images/proOval2.png") ,
              ),
            ),
            Text("Alero Samuel")

          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/pro3.png"),
              Image.asset("assets/images/pro4.png"),
            ],
          ),
        ),
        BottomNavigationBar(
  type: BottomNavigationBarType.fixed, // Fixed 
  backgroundColor: Colors.white, // <-- This works for fixed
  selectedItemColor: Colors.redAccent,
  unselectedItemColor: Colors.grey,
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home"
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_bag),
      label: "shopp"
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "shopp"
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add),
      label: "shopp"
    ),
  ],
),
        
      ],
    ),
    );
  }
}