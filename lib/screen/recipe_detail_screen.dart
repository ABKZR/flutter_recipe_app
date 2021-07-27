import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/model/recipe_model.dart';

class RecipeDetails extends StatelessWidget {
  RecipeDetails({Key? key, required this.recipe, required this.index}) : super(key: key);
  final RecipeModel recipe;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.hits![index]!.recipe!.label!),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                child: Image.network(recipe.hits![index]!.recipe!.image!,fit: BoxFit.cover)),
            ),
            Row(
              children: [
                Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                 Expanded(child: Text(recipe.hits![index]!.recipe!.ingredientLines.toString())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Dish Type:', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width:10),
                Text(recipe.hits![index]!.recipe!.dishType.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Calories per serving:', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width:10),
                Text(recipe.hits![index]!.recipe!.calories!.toStringAsFixed(1)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Cuisine:', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width:10),
                Text(recipe.hits![index]!.recipe!.cuisineType.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Meal Type:', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width:10),
                Text(recipe.hits![index]!.recipe!.mealType.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('FAT:', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width:10),
                Text(recipe.hits![index]!.recipe!.totalNutrients!.FAT!.quantity.toString())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Health:', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width:10),
                Expanded(child: Text(recipe.hits![index]!.recipe!.healthLabels.toString()))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Text('Ingredient:', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width:10),
                Expanded(child: Text(recipe.hits![index]!.recipe!.digest.toString()))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
