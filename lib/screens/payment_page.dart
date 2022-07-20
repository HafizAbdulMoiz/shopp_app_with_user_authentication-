import 'package:flutter/material.dart';


class PaymentPage extends StatelessWidget {
  const PaymentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check,color: Colors.green),
            ],
          ),
              Text("Payment Succesful",style: TextStyle(fontSize: 28),),
              SizedBox(
                height: 20.0,
              ),

              Text('''Your order will be ready in 5 days,
including shipping, more details and
options for tracking will be sent to 
your email 
            
            
                       Thanks!!!''',style:TextStyle(fontSize: 18.0),),
                       SizedBox(height: 20.0,),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFE2550),
                          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0)
                        ),
                        onPressed: (){}, child: Text("Continue Shopping"))

        ],
      ),
    );
  }
}