import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathonproj/screens/signin.dart';


class RegisterPage extends StatelessWidget {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late BuildContext context;

  void register()async{
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final String username = usernameController.text;
    final String email = emailController.text;
    final String password = passwordController.text;
   try {
   final UserCredential user = await  auth.createUserWithEmailAndPassword(email: email, password: password);
   await db.collection("users").doc(user.user?.uid).set({
     "email" : email ,
    "username" : username
   });
     print("user is registered");
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignIn()));
   } catch (e) {
   
   print("error");
   }
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/signimg.png",height: 120,),
                
              
                ],
              ),
              SizedBox(height: 20.0,),
                Container(
                  height: 400,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 244, 244),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 9.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: "Username",
                            prefixIcon: Icon(Icons.account_circle),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon:Icon(Icons.lock) ,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            )
                          ),
                        ),
                      ),
                      // SizedBox(height: 20.0,),
    //                   ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       primary: Color(0xFFFE2550),
    //                       padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 80.0)
    //                     ),
    //                     onPressed: (){
    //                       Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => const SignIn()));
    //                     }, child:Text("Login")),
        
                        SizedBox(height: 20.0,),
        
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:70.0,right:9),
                              child: Container(
                                width: 80,
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Text("OR"),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0,right:18),
                              child: Container(
                                width: 90,
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFE2550),
                          padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 80.0)
                        ),
                        onPressed: (){
                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignIn()));
                          register();
                        }, child:Text("Register")),
                        SizedBox(height: 10.0,),
                       Text("Create acount"),
                       Container(
                        width: 110,
                         child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                         ),
                       )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
      
    );
  }
}