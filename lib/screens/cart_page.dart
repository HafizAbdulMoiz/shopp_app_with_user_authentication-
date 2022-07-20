import 'package:flutter/material.dart';
import 'package:hackathonproj/screens/payment_page.dart';



class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Cart",style: TextStyle(color: Colors.black,fontSize: 28),),
      actions: [
        Row(
          children: [
            Icon(Icons.search,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage:AssetImage("assets/images/avatar.png")
              ),
            )
          ],
        )
      ],
      ),

      body: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 194, 194),
                borderRadius:BorderRadius.circular(10.0)
              ),
              height: 100,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/cart1.png"),
                  ),
                                    Text('''Hawalain Shirt
Sandy Williams'''),
Text("\$25.99",style: TextStyle(color: Color(0xFFFE2550)),)

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 194, 194),
                borderRadius:BorderRadius.circular(10.0) 
              ),
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/cart2.png"),
                  ),
                  Text('''Hawalain Shirt
Sandy Williams'''),
Text("\$25.99",style: TextStyle(color: Color(0xFFFE2550)),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 194, 194),
                borderRadius:BorderRadius.circular(10.0) 
              ),
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/cart3.png"),
                  ),
                  Text('''Hawalain Shirt
Sandy Williams'''),
Text("\$25.99",style: TextStyle(color: Color(0xFFFE2550)),)

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 194, 194),
                borderRadius:BorderRadius.circular(10.0) 
              ),
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/cart4.png"),
                  ),
                Text('''Hawalain Shirt
Sandy Williams'''),
Text("\$25.99",style: TextStyle(color: Color(0xFFFE2550)),),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Total",style: TextStyle(fontSize: 24),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("\$25.99",style: TextStyle(fontSize: 24,color:Color(0xFFFE2550) ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFE2550)
                    ),
                    onPressed: (){
                                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PaymentPage()),
    );
                    }, child: Text("PayNow")),
                )
              ],
            ),
          ),
          SizedBox(height: 60.0,),
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