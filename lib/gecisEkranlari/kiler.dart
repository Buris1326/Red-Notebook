import 'package:flutter/material.dart';
import 'package:kirmizidefter/API/Spoonacular.dart';

import '../functions/Fonksiyonlar.dart';
import '../functions/navigationFunction.dart';

class Kiler extends StatefulWidget {
  @override
  _KilerState createState() => _KilerState();
}

class _KilerState extends State<Kiler> {
  final _ingredientsController = TextEditingController();
  List<dynamic> _recipes = [];

  void _searchRecipes() async {
    final ingredients = _ingredientsController.text.split(',');
    try {
      final apiService = Spoonacular();

      final recipes = await apiService.searchRecipesByIngredients(ingredients);
      setState(() {
        _recipes = recipes;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarif Arama'),
        leading: NavigationFunction().geriNavigasyon(context),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            IconButton(onPressed:(){
              DecorationFunction().BarSnacke(context, 'Malzemeleri Lütfen İngilizce Olarak Giriniz.');
            }, icon: Icon(Icons.question_answer_sharp)),
            TextField(
              controller: _ingredientsController,
              decoration: InputDecoration(
                labelText: 'Please enter ingredients ( separate with comma )',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _searchRecipes,
              child: Text('Search Recipe'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  final recipe = _recipes[index];
                  return ListTile(
                    leading: Image.network(recipe['image']),
                    title: Text(recipe['title']),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
