import 'package:my_finances/core/database/tables/database_table.dart';

class FixedTransactionsTable extends DatabaseTable {
  @override
  String get tableName => 'fixed_transactions_table';

  @override
  String get tableSchema => '''
    CREATE TABLE IF NOT EXISTS fixed_transactions_table (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      description TEXT,
      amount REAL NOT NULL,
      type_id INT NOT NULL,
      category_id INTEGER,
      completed BOOL,
      completed_at TEXT,
      created_at TEXT DEFAULT (datetime('now')),
      
      FOREIGN KEY (type_id) REFERENCES transaction_type_table (id),
      FOREIGN KEY (category_id) REFERENCES category_table (id)
    );
  ''';

  @override
  String get tableDrop => 'DROP TABLE IF EXISTS $tableName';
}
