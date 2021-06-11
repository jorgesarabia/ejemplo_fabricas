import 'package:dartz/dartz.dart';
import 'package:ejemplo_fabricas/app/domain/email_address.dart';
import 'package:ejemplo_fabricas/app/domain/is_required.dart';
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
      emailChanged: (e) async* {
        yield state.copyWith(
          fabrica: _copyFabricaWith(
            email: EmailAddress(e.email),
          ),
          saveFailOrSuccess: none(),
        );
      },
      nombreChanged: (e) async* {
        yield state.copyWith(
          fabrica: _copyFabricaWith(
            nombre: IsRequired(e.nombre),
          ),
          saveFailOrSuccess: none(),
        );
      },
      telefonoChanged: (e) async* {
        yield state.copyWith(
          fabrica: _copyFabricaWith(
            telefono: e.telefono,
          ),
          saveFailOrSuccess: none(),
        );
      },
      direccionChanged: (e) async* {
        yield state.copyWith(
          fabrica: _copyFabricaWith(
            direccion: e.direccion,
          ),
          saveFailOrSuccess: none(),
        );
      },
      descripcionChanged: (e) async* {
        yield state.copyWith(
          fabrica: _copyFabricaWith(
            descripcion: e.descripcion,
          ),
          saveFailOrSuccess: none(),
        );
      },
      webChanged: (e) async* {
        yield state.copyWith(
          fabrica: _copyFabricaWith(
            webPage: e.web,
          ),
          saveFailOrSuccess: none(),
        );
      },
      saveButtonPressed: (e) async* {
        yield state.copyWith(
          autovalidateMode: AutovalidateMode.always,
          saveFailOrSuccess: none(),
        );

        if (state.fabrica.isValid) {
          yield* _guardarFabrica();
        }
      },
    );
  }

  Stream<AddFabricaState> _guardarFabrica() async* {
    yield state.copyWith(
      isSubmitting: true,
      saveFailOrSuccess: none(),
    );

    final saveOrFail = await fabricaFacade.guardarFabrica(state.fabrica);

    yield state.copyWith(
      isSubmitting: false,
      saveFailOrSuccess: saveOrFail,
    );
  }

  Fabrica _copyFabricaWith({
    IsRequired? nombre,
    EmailAddress? email,
    String? telefono,
    String? direccion,
    String? descripcion,
    String? webPage,
  }) {
    return Fabrica(
      nombre: nombre ?? state.fabrica.nombre,
      email: email ?? state.fabrica.email,
      telefono: telefono ?? state.fabrica.telefono,
      direccion: direccion ?? state.fabrica.direccion,
      descripcion: descripcion ?? state.fabrica.descripcion,
      webPage: webPage ?? state.fabrica.webPage,
    );
  }
}
