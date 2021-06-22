import 'package:flutter_appdegisim/veritabaniislemleri/Uyelikler.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbUtils {
  static final DbUtils _dbUtils = DbUtils._internal();
  DbUtils._internal();

  factory DbUtils() {
    return _dbUtils;
  }

  static Database _db;
  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  Future<Database> initializeDb() async {
    String path=join(await getDatabasesPath(), 'Uyelik_database.db');
    var dbUyelikler = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbUyelikler;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        "ÜYELİKLER TABLOSU(sifre INTEGER PRIMARY KEY, isimsoyisim TEXT, eposta TEXT)");
  }

  Future<void> deleteTable() async {
    final Database db = await this.db;
    db.delete('üyelikler');
  }

  Future<void> insertUyelikler(Uyelikler uyelikler) async {
    final Database db = await this.db;
    await db.insert(
      'üyelikler',
       uyelikler.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Uyelikler>> uyelikler() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> maps = await db.query('üyelikler');
    return List.generate(maps.length, (i) {
      return Uyelikler(
        isimsoyisim: maps[i]['İsim Soyisim'],
        eposta: maps[i]['e-mail'],
        sifre: maps[i]['Şifre'],
      );
    });
  }

  Future<void> updateUyelikler(Uyelikler uyelikler) async {
    final db = await this.db;
    await db.update(
      'üyelikler',
      uyelikler.toMap(),
      where: "sifre = ?",
      whereArgs: [uyelikler.sifre],
    );
  }

  Future<void> deleteUyelik(int sifre) async {
    final db = await this.db;
    await db.delete(
      'uyelik',
      where: "sifre = ?",
      whereArgs: [sifre],
    );
  }
  



}