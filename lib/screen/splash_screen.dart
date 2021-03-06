import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/constant.dart';
import 'package:flutter_recipe_app/screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (_) => HomeScreen())));
    return Scaffold(
      backgroundColor: Color(0xffff8a65),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 200,
                width: 200,
                child: Image.asset('assets/splash.png')),
            Text(
              'Select Menu For Your Loved Ones',
              style: kTextStyleRecipeDetails.copyWith(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
