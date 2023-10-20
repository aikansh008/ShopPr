import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoppr/loginscreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () { 
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
              Container(
              color: Colors.white,
              height: 100,
              width:100,
              child: Image.asset("assets/images/512x512bb.jpg"),
             ),
           
            Text("ShopPr",style: TextStyle(
            fontSize:30,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 205, 19, 6),
           ),),
           Text("Version 1.0.0",style: TextStyle(
            color: Color.fromARGB(255, 205, 19, 6),
           ),),
           
          ],
        ),
      )
    );
  }
}