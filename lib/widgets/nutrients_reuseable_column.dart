
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/constant.dart';

// ignore: must_be_immutable
class CustomColumn extends StatelessWidget {
  CustomColumn({
    Key? key,
    required this.title,
    required this.val,
  }) : super(key: key);

  var val;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: kTextStyleRecipeDetails.copyWith(fontWeight: FontWeight.w400,fontSize: 15),
        ),
        SizedBox(width: 10),
        Row(
          children: [
            Text(
              val.quantity!.toStringAsFixed(1),
              style: kTextStyleRecipeDetails.copyWith(fontSize: 13),
            ),
            Text(
              val.unit!,
              style: kTextStyleRecipeDetails,
            ),
          ],
        ),
      ],
    );
  }
}
