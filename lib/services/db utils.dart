import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

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
    CREATE TABLE dogs (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      ingredients TEXT,
      made TEXT
    )
  ''');
  }

}
