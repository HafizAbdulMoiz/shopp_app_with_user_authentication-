import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathonproj/screens/cart_page.dart';

class AddToCart extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined,color: Colors.black,),
                  SizedBox(width: 20,),
                  Icon(Icons.share, color: Colors.black,)
                ],
              ),
              
            ],
   
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/addtocart.png",height: 440,width:MediaQuery.of(context).size.width,fit: BoxFit.cover,),
                SizedBox(height:6.0,),
                Text("Perfect Situation Purple Long Sleeve Dress"), 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("\$ 25.99",style: TextStyle(color: Color(0xFFFE2550)),),
                    ],
                  ),
                ),
                  TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.grey,
                tabs: [
                
              Tab(text: 'Info',),
              Tab(text: 'Measurements'),
            ]), 
            SizedBox(height: 8.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Waist"),
                Text("Length"),
                Text("Breadth"),
              ],
            ) ,
            SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.grey,
                  child: Center(child: Text("43")),
                  height: 30,
                  width: 60,
                ),Container(
                  color: Colors.grey,
                  child: Center(child: Text("43")),
                  height: 30,
                  width: 60,
                ),Container(
                  color: Colors.grey,
                  child: Center(child: Text("43")),
                  height: 30,
                  width: 60,
                ),
                
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("Color"),
                  SizedBox(width: 8.0,),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
            Padding(
              padding: const EdgeInsets.only(left:48.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFE2550),
                  padding: EdgeInsets.symmetric(horizontal: 40.0)
                ),
                onPressed: (){
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const CartPage()),
    );
                }, child: Text("Add to Cart")),
            )

                ],
              ),
            ),

              ],
            ),
          ),
      ),
    );
  }
}