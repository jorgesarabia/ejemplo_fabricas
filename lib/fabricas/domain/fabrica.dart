import 'package:ejemplo_fabricas/app/domain/email_address.dart';
import 'package:ejemplo_fabricas/app/domain/is_required.dart';

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
      nombre: IsRequired(''),
      email: EmailAddress(''),
      telefono: '',
      direccion: '',
      descripcion: '',
      webPage: '',
    );
  }

  IsRequired nombre;
  EmailAddress email;
  String telefono;
  String direccion;
  String descripcion;
  String webPage;

  bool get isValid {
    if (email.value.isNotEmpty) {
      return email.isValid && nombre.isValid;
    }

    return nombre.isValid;
  }
}
