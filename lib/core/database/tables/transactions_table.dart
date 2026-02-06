import 'package:my_finances/core/database/tables/database_table.dart';

class TransactionsTable extends DatabaseTable {
  @override
  String get databaseName => 'transactions_table';

  @override
  String get databaseScheme =>
      '''
    CREATE TABLE $databaseName (
      
    )
  ''';
}
