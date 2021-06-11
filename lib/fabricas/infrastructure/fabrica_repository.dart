import 'package:dartz/dartz.dart';
import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';
import 'package:ejemplo_fabricas/fabricas/domain/i_fabrica_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFabricaFacade)
class FabricaRepository implements IFabricaFacade {
  @override
  Future<List<Fabrica>> getListaFabrica() {
    // TODO: implement getListaFabrica
    throw UnimplementedError();
  }

  @override
  Future<Option<bool>> guardarFabrica(Fabrica fabrica) {
    // TODO: implement guardarFabrica
    throw UnimplementedError();
  }
}
