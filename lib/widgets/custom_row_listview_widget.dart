import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/constant.dart';

// ignore: must_be_immutable
class CustomRowListview extends StatelessWidget {
  CustomRowListview(
      {Key? key,
      required this.title,
      required this.lst,
      this.direction = Axis.horizontal})
      : super(key: key);

  final String title;
  final List lst;
  var direction;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTextStyleRecipeDetails.copyWith(fontWeight: FontWeight.bold,fontSize: 20),
          ),
          SizedBox(width: 10),
          Expanded(
            child: ListView.builder(
                scrollDirection: direction,
                shrinkWrap: true,
                itemCount: lst.length,
                itemBuilder: (context, ind) {
                  return Container(
                      margin: EdgeInsets.only(left: 5),
                      padding: EdgeInsets.only(left: 5,top: 1,bottom: 1, right: 5),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black26),
                            left: BorderSide(color: Colors.black26),
                            right: BorderSide(color: Colors.black26),
                            top: BorderSide(color: Colors.black26),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(lst[ind]!,style: kTextStyleRecipeDetails,));
                }),
          ),
        ],
      ),
    );
  }
}
