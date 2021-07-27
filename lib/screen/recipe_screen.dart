import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/Api/api_call.dart';
import 'package:flutter_recipe_app/model/recipe_model.dart';
import 'package:flutter_recipe_app/screen/recipe_detail_screen.dart';
import 'package:flutter_recipe_app/widgets/custom_listview_widget.dart';
import 'package:http/http.dart' as http;

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({ Key? key, required this.name }) : super(key: key);
final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe'),centerTitle: true,backgroundColor: Colors.transparent,),
      body: 
             FutureBuilder<RecipeModel>(
                future: ApiCall().fetchData(http.Client(), recipe: name ),
                builder: (context,AsyncSnapshot<RecipeModel> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.grey,
                      ),
                    );
                  } else if (snapshot.hasData) {
                    var data = snapshot.data;
                    return GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                          shrinkWrap: true,
                      itemCount: snapshot.data!.hits!.length,
                      
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>RecipeDetails(recipe: data!, index: index)));
                          },
                          child: Stack(
                            children: [
                              ClipRRect(
                                clipBehavior: Clip.antiAlias,
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  snapshot.data!.hits![index]!.recipe!.image!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: double.infinity,
                                      padding:
                                          const EdgeInsets.only(right: 10, left: 10),
                            
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(150, 0, 0, 0),
                                            Color.fromARGB(25, 20, 10, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                            
                                      ),
                            
                                      child: Text(
                                        snapshot.data!.hits![index]!.recipe!.label!,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )))
                            ],
                          ),
                        );
                      },
                    );

                  } else{
                     return Text('data'); 
                  }
                }),
    );
  }
}