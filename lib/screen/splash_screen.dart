import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen())));
    return Scaffold(
      backgroundColor:Color(0xffff8a65),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Image.asset('assets/splash.png'))
      ),
    );
  }
}