import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathonproj/routes/routes.dart';
import 'package:hackathonproj/screens/swap_one.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
    ()=>  
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SwapOne()),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFE2550),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/splash.png")
        ],
      ),
    );
  }
}