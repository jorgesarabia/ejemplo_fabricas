import 'package:ejemplo_fabricas/app/domain/email_address.dart';

class Fabrica {
  Fabrica({
    required this.nombre,
    required this.email,
    required this.telefono,
    required this.direccion,
    required this.descripcion,
    required this.webPage,
  });

  factory Fabrica.empty() {
    return Fabrica(
      nombre: '',
      email: EmailAddress(''),
      telefono: '',
      direccion: '',
      descripcion: '',
      webPage: '',
    );
  }

  String nombre;
  EmailAddress email;
  String telefono;
  String direccion;
  String descripcion;
  String webPage;
}
