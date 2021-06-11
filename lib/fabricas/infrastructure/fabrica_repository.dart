import 'package:dartz/dartz.dart';
import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';
import 'package:ejemplo_fabricas/fabricas/domain/i_fabrica_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqlite_api.dart';

@LazySingleton(as: IFabricaFacade)
class FabricaRepository implements IFabricaFacade {
  FabricaRepository({required this.db});

  final Database db;

  @override
  Future<List<Fabrica>> getListaFabrica() {
    // TODO: implement getListaFabrica
    throw UnimplementedError();
  }

  @override
  Future<Option<bool>> guardarFabrica(Fabrica fabrica) async {
    final saved = await db.insert('Fabricas', fabrica.toMap());

    return optionOf(saved != 0);
  }
}
