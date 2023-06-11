import 'dart:convert';

import 'package:http/http.dart' as http;

class Spoonacular {
  Future<List<dynamic>> searchRecipesByIngredients(
      List<String> ingredients) async {
    final apiKey = '8ae39d32507749e6af58967cde8fda0a'; // Spoonacular API anahtarı
    final url = 'https://api.spoonacular.com/recipes/findByIngredients?ingredients=${ingredients
        .join(",")}&apiKey=$apiKey';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch recipes');
    }
  }
}