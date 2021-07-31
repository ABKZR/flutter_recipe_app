import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/constant.dart';
import 'package:flutter_recipe_app/model/carousel_data.dart';
import 'package:flutter_recipe_app/screen/recipe_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_recipe_app/widgets/hero_carousel_card.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  var search = TextEditingController();
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Home Page',
          style: kTextStyle(fontSize: 20,color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              color: Colors.transparent,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin:
                        EdgeInsets.only(left: 20, top: 5, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color.fromRGBO(10, 10, 10, 0.2),
                          offset: Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search...',
                        hintStyle: kTextStyle(color: Colors.grey.shade400),
                      ),
                      onChanged: (val) {
                        name = val.toString();
                      },
                      
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      onPressed: () {
                        name!.trim() !=null?
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RecipeScreen(name: name!))): null;
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Regions...',
                style: kTextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20),
              ),
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: lst
                    .map((e) => HeroCarouselCard(
                          cuisine: e,
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Category...',
                  style: kTextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20)),
            ),
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: category
                  .map((e) => HeroCarouselCard(
                        cuisine: e,
                      ))
                  .toList(),
            )),
          ],
        ),
      ),
    );
  }
}
