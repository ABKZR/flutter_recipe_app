import 'dart:convert';

import 'package:flutter_recipe_app/model/recipe_model.dart';
import 'package:http/http.dart' as http;

class ApiCall {
  Future<RecipeModel> fetchData(http.Client client,
      {required String recipe}) async {
    var apikey = '%200a0599908c64087edb84d11dda4c8c8c#';
    var appid = '20323ebc';
    var url = Uri.parse(
        'https://api.edamam.com/api/recipes/v2?type=public&q=$recipe&app_id=$appid&app_key=$apikey');
    var recipeModel;
    var response = await client.get(url);
    try {
      if (response.statusCode == 200) {
        var jsonString = json.decode(response.body);
        recipeModel = RecipeModel.fromJson(jsonString);
      }
    } catch (e) {
      print(e);
    }
    return recipeModel;
  }
}
