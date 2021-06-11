import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';
import 'package:ejemplo_fabricas/fabricas/domain/i_fabrica_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lista_fabrica_event.dart';
part 'lista_fabrica_state.dart';

part 'lista_fabrica_bloc.freezed.dart';

@injectable
class ListaFabricaBloc extends Bloc<ListaFabricaEvent, ListaFabricaState> {
  ListaFabricaBloc(this.fabricaFacade) : super(const ListaFabricaState.initial());

  final IFabricaFacade fabricaFacade;

  @override
  Stream<ListaFabricaState> mapEventToState(ListaFabricaEvent event) async* {
    yield* event.map(
      getItems: (e) async* {
        yield const ListaFabricaState.isLoading();
        final fabricas = await fabricaFacade.getListaFabrica();
        if (fabricas.isEmpty) {
          yield const ListaFabricaState.isEmpty();
        } else {
          yield ListaFabricaState.listOfFabricas(fabricas);
        }
      },
    );
  }
}
