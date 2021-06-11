part of 'lista_fabrica_bloc.dart';

@freezed
class ListaFabricaState with _$ListaFabricaState {
  const factory ListaFabricaState.initial() = Initial;
  const factory ListaFabricaState.isLoading() = IsLoading;
  const factory ListaFabricaState.isEmpty() = IsEmpty;
  const factory ListaFabricaState.listOfFabricas(List<Fabrica> items) = ListOfFabricas;
}
