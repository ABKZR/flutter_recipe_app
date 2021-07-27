import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/screen/recipe_screen.dart';

class HomeScreen extends StatelessWidget {
  var search = TextEditingController();

  String name = 'pasta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App Home Page'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(left: 20, top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: Color.fromRGBO(100, 100, 100, 0.1),
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                  onChanged: (val) {
                    name = val.toString();
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecipeScreen(name: name)));
                  },
                  icon: Icon(Icons.search),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          
        ],
      ),
      //backgroundColor: Colors.grey,
    );
  }
}
