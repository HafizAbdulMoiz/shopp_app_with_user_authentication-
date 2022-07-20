import 'package:flutter/material.dart';
import 'package:hackathonproj/screens/add_to_cart.dart';


class ProductOnePage extends StatelessWidget {
  const ProductOnePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
    length: 3,
     child: Scaffold(
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
          bottom: TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.grey,
            tabs: [
            
          Tab(text: 'Women',),
          Tab(text: 'Men'),
          Tab(text: 'Children'),
        ]),
      ),
     body: SingleChildScrollView(
       child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFFFFFFFF),
              ),
              height: 470,
              width: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/proOval1.png"),

                        ),
                    Text(''' Sandy Williams
 Freelance Tailor '''),
                        Icon(Icons.favorite,color: Color(0xFFFE2550),),
 Text("2.3k"),
                      ],
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('''
If you are looking for the latest and the most stylish 
Pakistan lawn collection 2018 with chiffon dupatta, 
you have come at the right place as Alkaram has 
brought fully embroidered lawn suits with chiffon and 
sleevesin its wide range of stitched and unstitched lawn suits.'''),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AddToCart()));
                        },
                        child: Image.asset("assets/images/proone.png")),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Image.asset("assets/images/proone.1.png",height: 80.0,),
                                Image.asset("assets/images/proone.2.png",height: 80.0,),
                                
                                
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                
                                Image.asset("assets/images/proone.3.png",height: 80.0,),
                                Image.asset("assets/images/proone.4.png",height: 80.0,),
                                
                              ],
                            ),
                          ),
                         
                        ],
                      ),
                                          ],
                   ),
                 ),
                 
                  
                Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFFE2550)
                                  ),
                                  onPressed: (){}, child: Text("#Summer")),
                              ),
                                SizedBox(width:20.0),
                                ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFFE2550)
                                ),
                                onPressed: (){}, child: Text("#Purple"))
                            ],
                          )  
                ],
                
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFFFFFFF),
            ),
            height: 57,
            width: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/proOval1.png"),

                      ),
                  Text(''' Sandy Williams
 Freelance Tailor '''),
                      Icon(Icons.favorite,color: Color(0xFFFE2550),),
 Text("2.3k"),
                    ],
                  ),
                ),
           
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
     ])),)
   );
  }
}