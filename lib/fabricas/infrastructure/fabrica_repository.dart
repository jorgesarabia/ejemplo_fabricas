import 'package:dartz/dartz.dart';
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

    final List<Map<String, Object?>> list = await db.query('Fabricas');

    return Fabrica.listOfFabricasFromListOfMaps(list);
  }

  @override
  Future<Option<bool>> guardarFabrica(Fabrica fabrica) async {
    await Future<dynamic>.delayed(const Duration(seconds: 2));

    final saved = await db.insert('Fabricas', fabrica.toMap());

    return optionOf(saved != 0);
  }
}
