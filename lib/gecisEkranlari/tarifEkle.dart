import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbUtils {
  static final DbUtils _dbUtils = DbUtils._internal();
  DbUtils._internal();

  factory DbUtils() {
    return _dbUtils;
  }

  static Database? _db;

  Future<Database?> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    String path = join(await getDatabasesPath(), 'recipe_database.db');
    var dbRecipes = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbRecipes;
  }

  void _createDb(Database db, int version) async {
    await db.execute('''
    CREATE TABLE recipes (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      ingredients TEXT,
      made TEXT
    )
  ''');
  }
}

class Recipe {
  final String name;
  final String ingredients;
  final String made;

  Recipe({required this.name, required this.ingredients, required this.made});

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      name: map['name'],
      ingredients: map['ingredients'],
      made: map['made'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ingredients': ingredients,
      'made': made,
    };
  }
}

class TarifEkle extends StatefulWidget {
  @override
  _TarifEkleState createState() => _TarifEkleState();
}

class _TarifEkleState extends State<TarifEkle> {
  final DbUtils dbUtils = DbUtils();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ingredientController = TextEditingController();
  final TextEditingController _madeController = TextEditingController();
  List<Recipe> recipes = [];

  @override
  void initState() {
    super.initState();
    _fetchRecipes();
  }

  Future<void> _fetchRecipes() async {
    Database? db = await dbUtils.db;
    if (db != null) {
      List<Map<String, dynamic>> recipeMaps = await db.query('recipes');
      recipes = recipeMaps.map((recipeMap) => Recipe.fromMap(recipeMap)).toList();
      setState(() {});
    } else {
      print("Veritabanına erişilemedi.");
    }
  }

  void _addRecipe() async {
    String name = _nameController.text;
    String ingredients = _ingredientController.text;
    String made = _madeController.text;

    if (name.isEmpty || ingredients.isEmpty || made.isEmpty) {
      return;
    }

    Database? db = await dbUtils.db;
    if (db != null) {
      Recipe newRecipe = Recipe(
        name: name,
        ingredients: ingredients,
        made: made,
      );
      await db.insert('recipes', newRecipe.toMap());
      _nameController.clear();
      _ingredientController.clear();
      _madeController.clear();
      _fetchRecipes();
    } else {
      print("Veritabanına erişilemedi.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarif Ekle'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Tarif Adı',
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    hintText: 'Tarif adını girin',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  controller: _ingredientController,
                  decoration: const InputDecoration(
                    labelText: 'Malzemeler',
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    hintText: 'Malzemeleri girin',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  controller: _madeController,
                  decoration: const InputDecoration(
                    labelText: 'Yapılış',
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    hintText: 'Yapılışını girin',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _addRecipe,
                  child: Text('Tarif Ekle'),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _addRecipe,
                  child: Text('Tarif Güncelle'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                Recipe recipe = recipes[index];
                return ListTile(
                  title: Text(recipe.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Malzemeler: ${recipe.ingredients}'),
                      Text('Yapılış: ${recipe.made}'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


