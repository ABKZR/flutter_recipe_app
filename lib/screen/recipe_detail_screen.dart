import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_recipe_app/constant.dart';
import 'package:flutter_recipe_app/model/recipe_model.dart';
import 'package:flutter_recipe_app/widgets/custom_row_listview_widget.dart';
import 'package:flutter_recipe_app/widgets/nutrients_reuseable_column.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetails extends StatelessWidget {
  RecipeDetails({Key? key, required this.recipe, required this.index})
      : super(key: key);
  final RecipeModel recipe;
  final int index;

  @override
  Widget build(BuildContext context) {
    int num = recipe.hits![index]!.recipe!.ingredientLines!.length;
    var nutData = recipe.hits![index]!.recipe!.totalNutrients!;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            expandedHeight: 300,
            stretch: true,
            stretchTriggerOffset: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                recipe.hits![index]!.recipe!.label!,
                style: kTextStyle(fontWeight: FontWeight.w600,color: Colors.white),
              ),
              centerTitle: true,
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
              background: Stack(fit: StackFit.expand, children: [
                Image.network(
                  recipe.hits![index]!.recipe!.image!,
                  fit: BoxFit.cover,
                ),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, 0.8),
                      end: Alignment(0.0, 0.0),
                      colors: <Color>[
                        Color(0x60000000),
                        Color(0x00000000),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Ingredients:',
                        style: kTextStyleRecipeDetails.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
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
                                return Text(
                                  recipe.hits![index]!.recipe!
                                      .ingredientLines![ind]!,
                                  style: kTextStyleRecipeDetails,
                                );
                              })),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Calories:',
                        style: kTextStyleRecipeDetails.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Text(
                        recipe.hits![index]!.recipe!.calories!
                            .toStringAsFixed(1),
                        style: kTextStyleRecipeDetails,
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    height: 42,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Nutrients:',
                              style: kTextStyleRecipeDetails.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomColumn(
                              title: 'Fat',
                              val: recipe
                                  .hits![index]!.recipe!.totalNutrients!.FAT!,
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
                            CustomColumn(
                                title: 'Cholesterol', val: nutData.CHOLE!),
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
                        )
                      ],
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
            ]),
          )
        ],
      ),
          );
  }
}
