import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_recipe_app/model/recipe_model.dart';
import 'package:flutter_recipe_app/widgets/custom_row_listview_widget.dart';

class RecipeDetails extends StatelessWidget {
  RecipeDetails({Key? key, required this.recipe, required this.index})
      : super(key: key);
  final RecipeModel recipe;
  final int index;
  List<String> lst = ['Fat', 'Carbs', 'Protein'];

  @override
  Widget build(BuildContext context) {
    int num = recipe.hits![index]!.recipe!.ingredientLines!.length;
    var nutData = recipe.hits![index]!.recipe!.totalNutrients!;

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
                  child: Image.network(recipe.hits![index]!.recipe!.image!,
                      fit: BoxFit.cover)),
            ),
            Row(
              children: [
                Text(
                  'Ingredients:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: num,
                        itemBuilder: (context, ind) {
                          return Text(recipe
                              .hits![index]!.recipe!.ingredientLines![ind]!);
                        })),
              ],
            ),
            Divider(),
            CustomRowListview(
                title: 'Dish:', lst: recipe.hits![index]!.recipe!.dishType!),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Calories per serving:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text(recipe.hits![index]!.recipe!.calories!.toStringAsFixed(1)),
              ],
            ),
            Divider(),
            CustomRowListview(
                title: 'Cuisine:',
                lst: recipe.hits![index]!.recipe!.cuisineType!),
            Divider(),
            CustomRowListview(
                title: 'Meal:', lst: recipe.hits![index]!.recipe!.mealType!),
            Divider(),
            Container(
              height: 35,
              child: ListView(
                
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                 Row(
                   children: [
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(
                       title: 'Fat',
                       val: recipe.hits![index]!.recipe!.totalNutrients!.FAT!,
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(title: 'Sugar', val: nutData.SUGAR!),
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(title: 'VITB12', val: nutData.VITB12!),
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(title: 'Fiber', val: nutData.FIBTG!),
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(title: 'Iron', val: nutData.FE!),
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(title: 'Carbs', val: nutData.CHOCDF!),
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(title: 'Cholesterol', val: nutData.CHOLE!),
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(title: 'Phosphorus', val: nutData.P!),
                     SizedBox(
                       width: 10,
                     ),
                     CustomColumn(title: 'Calcium', val: nutData.CA!),
                     SizedBox(
                       width: 10,
                     ),
                   ],
                 )],
              ),
            ),
               
            
            Divider(),
            CustomRowListview(
                title: 'Health:',
                lst: recipe.hits![index]!.recipe!.healthLabels!),
            Divider(),
            CustomRowListview(
              lst: recipe.hits![index]!.recipe!.dietLabels!,
              title: 'Diets:',
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomColumn extends StatelessWidget {
  CustomColumn({
    Key? key,
    required this.title,
    required this.val,
  }) : super(key: key);

  // final RecipeModel recipe;
  // final int index;
  var val;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Row(
          children: [
            //recipe.hits![index]!.recipe!.totalNutrients!.FAT!
            Text(val.quantity!.toStringAsFixed(1)),
            Text(val.unit!),
          ],
        ),
      ],
    );
  }
}
