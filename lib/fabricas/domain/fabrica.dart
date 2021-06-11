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

  factory Fabrica.fromMap(Map<String, Object?> map) {
    final _nombre = map['nombre'] as String?;
    final _email = map['email'] as String?;
    final _telefono = map['telefono'] as String?;
    final _direccion = map['direccion'] as String?;
    final _descripcion = map['descripcion'] as String?;
    final _webPage = map['webPage'] as String?;

    return Fabrica(
      nombre: IsRequired(_nombre ?? ''),
      email: EmailAddress(_email ?? ''),
      telefono: _telefono ?? '',
      direccion: _direccion ?? '',
      descripcion: _descripcion ?? '',
      webPage: _webPage ?? '',
    );
  }

  IsRequired nombre;
  EmailAddress email;
  String telefono;
  String direccion;
  String descripcion;
  String webPage;

  Map<String, Object?> toMap() {
    return <String, Object?>{
      'nombre': nombre.value,
      'email': email.value,
      'telefono': telefono,
      'direccion': direccion,
      'descripcion': descripcion,
      'webPage': webPage,
    };
  }

  static List<Fabrica> listOfFabricasFromListOfMaps(List<Map<String, Object?>> listOfMaps) {
    final list = <Fabrica>[];

    for (final fabrica in listOfMaps) {
      list.add(Fabrica.fromMap(fabrica));
    }

    return list;
  }

  bool get isValid {
    if (email.value.isNotEmpty) {
      return email.isValid && nombre.isValid;
    }

    return nombre.isValid;
  }
}
