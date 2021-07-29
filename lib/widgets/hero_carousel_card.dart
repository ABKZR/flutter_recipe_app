import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/constant.dart';
import 'package:flutter_recipe_app/model/carousel_data.dart';
import 'package:flutter_recipe_app/screen/recipe_screen.dart';

class HeroCarouselCard extends StatelessWidget {
  const HeroCarouselCard({Key? key, required this.cuisine}) : super(key: key);
  final Cuisine? cuisine;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => RecipeScreen(name: cuisine!.title)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                  cuisine!.image,
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      cuisine!.title,
                      style: kTextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
