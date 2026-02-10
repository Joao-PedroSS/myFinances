import 'package:my_finances/core/database/tables/database_table.dart';

class TransactionsTable extends DatabaseTable {
  @override
  String get tableName => 'transactions_table';

  @override
  String get tableSchema =>
      '''
    CREATE TABLE IF NOT EXISTS $tableName (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      description TEXT,
      amount REAL NOT NULL,
      type_id INTEGER NOT NULL,
      category_id INTEGER,
      created_at TEXT DEFAULT (datetime('now')),
      
      FOREIGN KEY (type_id) REFERENCES transaction_type_table (id),
      FOREIGN KEY (category_id) REFERENCES category_table (id)
    );
  ''';

  @override
  String get tableDrop => 'DROP TABLE IF EXISTS $tableName';
}
