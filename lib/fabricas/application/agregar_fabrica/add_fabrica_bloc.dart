import 'package:dartz/dartz.dart';
import 'package:ejemplo_fabricas/fabricas/domain/fabrica.dart';
import 'package:ejemplo_fabricas/fabricas/domain/i_fabrica_facade.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_fabrica_event.dart';
part 'add_fabrica_state.dart';

part 'add_fabrica_bloc.freezed.dart';

@injectable
class AddFabricaBloc extends Bloc<AddFabricaEvent, AddFabricaState> {
  AddFabricaBloc(this.fabricaFacade) : super(AddFabricaState.initial());

  final IFabricaFacade fabricaFacade;

  @override
  Stream<AddFabricaState> mapEventToState(AddFabricaEvent event) async* {
    yield* event.map(
      saveButtonPressed: (e) async* {},
      emailChanged: (e) async* {},
      nombreChanged: (e) async* {},
      telefonoChanged: (e) async* {},
      direccionChanged: (e) async* {},
      descripcionChanged: (e) async* {},
    );
  }
}
