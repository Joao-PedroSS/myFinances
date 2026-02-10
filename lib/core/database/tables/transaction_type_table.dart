import 'package:my_finances/core/database/tables/database_table.dart';

class TransactionTypeTable extends DatabaseTable {
  @override
  String get tableName => 'transaction_type_table';

  @override
  String get tableSchema =>
      '''
    CREATE TABLE IF NOT EXISTS $tableName (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      transaction_type TEXT NOT NULL
    );
  ''';

  @override
  String get tableDrop => 'DROP TABLE IF EXISTS $tableName';
}
