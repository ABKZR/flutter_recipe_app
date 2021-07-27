import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/model/recipe_model.dart';
import 'package:flutter_recipe_app/screen/recipe_detail_screen.dart';

class CustomListviewWidget extends StatelessWidget {
  CustomListviewWidget({Key? key, required this.data, required this.index}) : super(key: key);
  final RecipeModel data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => RecipeDetails(
                        recipe: data,
                        index: index,
                      )));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 3.0,
          color: Colors.blueGrey.shade100,
          child: ListTile(
            title: Text(data.hits![index]!.recipe!.label!),
            subtitle: Text(data.hits![index]!.recipe!.cuisineType.toString()),
            leading: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                data.hits![index]!.recipe!.image!,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
