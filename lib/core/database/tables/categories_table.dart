import 'package:my_finances/core/database/tables/database_table.dart';

class CategoriesTable extends DatabaseTable {
  @override
  String get tableName => 'categories_table';

  @override
  String get tableSchema =>
      '''
    CREATE TABLE IF NOT EXISTS $tableName (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      description TEXT,
      type_id INTEGER,
      
      FOREIGN KEY (type_id) REFERENCES transaction_type_table (id)
    );
  ''';

  @override
  String get tableDrop => 'DROP TABLE IF EXISTS $tableName';
}
