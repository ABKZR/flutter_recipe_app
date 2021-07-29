import 'package:flutter/material.dart';

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
            child: ListView.builder(
                scrollDirection: direction,
                shrinkWrap: true,
                itemCount: lst.length,
                itemBuilder: (context, ind) {
                  return Container(
                      margin: EdgeInsets.only(left: 5),
                      padding: EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black26),
                            left: BorderSide(color: Colors.black26),
                            right: BorderSide(color: Colors.black26),
                            top: BorderSide(color: Colors.black26),
                          ),
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(lst[ind]!));
                }),
          ),
        ],
      ),
    );
  }
}
