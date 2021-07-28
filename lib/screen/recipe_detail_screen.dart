import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_recipe_app/model/recipe_model.dart';

class RecipeDetails extends StatelessWidget {
  RecipeDetails({Key? key, required this.recipe, required this.index})
      : super(key: key);
  final RecipeModel recipe;
  final int index;
List<String> lst =['Fat','Carbs','Protein'];
  @override
  Widget build(BuildContext context) {
    int num = recipe.hits![index]!.recipe!.ingredientLines!.length;
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
            CustomRowListview(title: 'Dish:', lst:recipe.hits![index]!.recipe!.dishType! ),
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
            CustomRowListview(title: 'Cuisine:', lst: recipe.hits![index]!.recipe!.cuisineType!),
            Divider(),
            CustomRowListview(title: 'Meal:', lst: recipe.hits![index]!.recipe!.mealType!),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'FAT:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Text(recipe
                        .hits![index]!.recipe!.totalNutrients!.FAT!.quantity!
                        .toStringAsFixed(1)),
                    Text(recipe
                        .hits![index]!.recipe!.totalNutrients!.FAT!.unit!),
                    // TODO digest List Then List View
                  ],
                ),
              ],
            ),
            //Todo Covert all list into list View
            Divider(),
            CustomRowListview(title: 'Health', lst:recipe.hits![index]!.recipe!.healthLabels! ),
            Divider(),
            CustomRowListview(lst: recipe.hits![index]!.recipe!.dietLabels!,title: 'Diets:',),
          ],
        ),
      ),
    );
  }
}

class CustomRowListview extends StatelessWidget {
   CustomRowListview({
    Key? key,
    // required this.recipe,
    // required this.index,
   required this.title,
   required this.lst,
   this.direction= Axis.horizontal
  }) : super(key: key);

  // final RecipeModel recipe;
  // final int index;
  final String title;
  final List lst;
  var direction ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          Expanded(
              child:ListView.builder(
                //recipe.hits![index]!.recipe!.dietLabels!.length
                scrollDirection: direction,
                shrinkWrap: true,
                itemCount: lst.length,
                itemBuilder: (context, ind){
              return Text(lst[ind]! +".  ");
              }),
              
               ),
        ],
      ),
    );
  }
}
