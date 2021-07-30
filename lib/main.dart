import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffff8a65),
        secondaryHeaderColor: Color(0xffc41c00),
        appBarTheme: AppBarTheme(brightness: Brightness.light),
        // primaryColor: Colors.teal.shade500,
        accentColor: Colors.teal,
        brightness: Brightness.light
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}