import 'package:dartz/dartz.dart';
import 'package:ejemplo_fabricas/app/domain/email_address.dart';
import 'package:ejemplo_fabricas/app/domain/is_required.dart';
import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';
import 'package:ejemplo_fabricas/fabricas/domain/i_fabrica_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@LazySingleton(as: IFabricaFacade)
class FabricaRepository implements IFabricaFacade {
  FabricaRepository({required this.db});

  final Database db;

  @override
  Future<List<Fabrica>> getListaFabrica() async {
    await Future<dynamic>.delayed(const Duration(seconds: 2));

    // List<Map> list = await db.rawQuery('SELECT * FROM Test');
    List<Map> list = await db.query('Fabricas');
    print(list);

    return <Fabrica>[
      // Fabrica(
      //   nombre: IsRequired('Electronica Sarabia'),
      //   email: EmailAddress('algo@algo.com'),
      //   telefono: '444650',
      //   direccion: 'Bs As 1154',
      //   descripcion: 'Electronica que se dedica a vender cosas',
      //   webPage: 'https://www.google.com',
      // ),
    ];
  }

  @override
  Future<Option<bool>> guardarFabrica(Fabrica fabrica) async {
    await Future<dynamic>.delayed(const Duration(seconds: 2));

    final saved = await db.insert('Fabricas', fabrica.toMap());

    return optionOf(saved != 0);
  }
}
