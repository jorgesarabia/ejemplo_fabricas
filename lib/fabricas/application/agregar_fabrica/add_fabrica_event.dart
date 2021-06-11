part of 'add_fabrica_bloc.dart';

@freezed
class AddFabricaEvent with _$AddFabricaEvent {
  const factory AddFabricaEvent.saveButtonPressed() = SaveButtonPressed;
  const factory AddFabricaEvent.emailChanged(String email) = EmailChanged;
  const factory AddFabricaEvent.nombreChanged(String nombre) = NombreChanged;
  const factory AddFabricaEvent.telefonoChanged(String telefono) = TelefonoChanged;
  const factory AddFabricaEvent.direccionChanged(String direccion) = DireccionChanged;
  const factory AddFabricaEvent.descripcionChanged(String descripcion) = DescripcionChanged;
}
