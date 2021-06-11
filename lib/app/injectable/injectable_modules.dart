import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

@module
abstract class InjectableModule {
  @preResolve
  Future<Database> get database async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'demo.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        const query = '''
        CREATE TABLE Fabricas(
          id INTEGER PRIMARY KEY,
          nombre TEXT,
          email TEXT,
          telefono TEXT,
          direccion TEXT,
          descripcion TEXT,
          webPage TEXT
        )
        ''';
        await db.execute(query);
      },
    );
  }
}
