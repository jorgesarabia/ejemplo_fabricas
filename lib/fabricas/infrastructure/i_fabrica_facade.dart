import 'package:dartz/dartz.dart';
import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';

abstract class IFabricaFacade {
  Future<List<Fabrica>> getListaFabrica();

  Future<Option<bool>> guardarFabrica(Fabrica fabrica);
}
