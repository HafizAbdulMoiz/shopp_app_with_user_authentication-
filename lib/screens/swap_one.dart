import 'package:flutter/material.dart';
import 'package:hackathonproj/screens/swap_two.dart';


class SwapOne extends StatelessWidget {
  const SwapOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Stack(
        children: [
         GestureDetector(
          onTap: (){
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SwapTwo()),
    );
          },
           child: Image.asset("assets/images/swapone1.png",
           height: 800,
           width: 1500,
           fit: BoxFit.cover,
           ),
         ),
         Positioned(
          left: 170,
          top: 60,
          child: Image.asset("assets/images/splash.png",scale: 2.5,)),
          Positioned(
            top: 440,
            left: 20,
            child: Text.rich(TextSpan(text: "No",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))),
            Positioned(
          top: 430,
          left: 60,
          child: Text("1",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),))  ,     
          Positioned(
            top: 480,
            left: 18,
            child: Text("Featured",style: TextStyle(color: Color(0xFFFE2550),fontSize: 24,fontWeight: FontWeight.bold),)),

            Positioned(
              top: 510,
              left:17,
              child: Text("Tailored ",style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.bold),)),

              Positioned(
                top: 560,
                left: 20,
                child: Text('''Jennifer Kingsley exploring the 
new range of winter fashion wear''',style: TextStyle(color: Colors.white,fontSize: 18.0),)
),

Positioned(
  top: 640,
  
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onSurface: Colors.grey,
        side:BorderSide(color: Color(0xFFFFFFFF)),
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 150)
      ),
      onPressed: (){}, child: Text("Shop Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
  ))
           ],
      ),
    ),);
  }
}