import 'package:ejemplo_fabricas/app/domain/email_address.dart';

class Fabrica {
  Fabrica({
    required this.nombre,
    required this.email,
    required this.telefono,
    required this.direccion,
    required this.descripcion,
  });

  final String nombre;
  EmailAddress email;
  String telefono;
  String direccion;
  String descripcion;
}
