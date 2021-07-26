import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/Api/api_call.dart';
import 'package:flutter_recipe_app/model/recipe_model.dart';
import 'package:http/http.dart'as http;
class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe App'),centerTitle: true,backgroundColor: Colors.transparent,),
      body: FutureBuilder<RecipeModel>(
        future: ApiCall().fetchData(http.Client(),'mexican'),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
         else if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.hits!.length,
              itemBuilder: (context, index){
              var data = snapshot.data!.hits![index]!;
                var con=data.recipe!.cuisineType.toString();
                return GestureDetector(
                  onTap: (){
                    
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 3.0,
                    color: Colors.blueGrey.shade100,
                              child: ListTile(
                  title: Text(data.recipe!.label!),
                  subtitle: Text(con =='null'? '': con),
                  leading: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(data.recipe!.image!),
                  ),
                              ),
                            ),
                );
            });
          }
          else throw Exception(snapshot.error);
      }),
      backgroundColor: Colors.grey,
    );
  }
}