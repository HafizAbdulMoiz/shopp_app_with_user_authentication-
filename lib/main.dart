import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathonproj/routes/routes.dart';
import 'package:hackathonproj/screens/splashscreen.dart';
import 'package:hackathonproj/screens/swap_one.dart';
import 'package:hackathonproj/screens/swap_three.dart';
import 'package:hackathonproj/screens/swap_two.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //  "/" : (context)=> SplashScreen(),
      //  MyRoutes.SwapOneRoute: (context) =>SwapOne(),
      //   MyRoutes.SwapTwoRoute : (context) => SwapTwo(),
      //   MyRoutes.SwapThreeRoute : (context) => SwapThree()
      // },
      home: SplashScreen(),
    );
  }
}