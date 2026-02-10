import 'package:my_finances/core/database/tables/transactions_table.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final _databaseName = 'finances_database.db';
  static final _databaseVersion = 1;

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    await _openSqlDatabase();
    return _database!;
  }

  Future<void> _openSqlDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _databaseName);

    _database = await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    final tables = [TransactionsTable()];

    for (final table in tables) {
      db.execute(table.tableScheme);
    }
  }
}
