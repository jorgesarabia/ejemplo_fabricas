# ejemplo_fabricas

Es un proyecto que consiste en una pantalla de login y permite cargar fábricas y listar las fábricas cargadas.

Una vez que se inició sesión, se muestra la lista de fábricas cargadas. Si no tiene fábricas se muestra un mensaje, indicando que botón lleva al formulario de carga.

# Instalación

Luego de clonar el repositorio y situarse en el directorio raiz del proyecto, correr los siguientes comandos en su consola:

    flutter pub get
    flutter run

# Notas

### Descripción

La clase principal es la clase Fabrica, que posee los campos **nombre, email, telefono, direccion, descripcion y webPage**. En el formulario de carga el único campo obligatorio es el nombre, los otros son opcionales, pero se aplicó un validador al email, de modo que si se carga algo en ese campo, ese valor cargado debe corresponderse con un email.
Las fabricas guardadas se guardan con **SQLite**, por lo que están disponibles para listarlos al solicitarlos en el home.

### Herramientas utilizadas

En este proyecto se implementó la arquitectura DDD y para el manejo de estados se utilizó el patrón BLoC. Para ello, me apoyé en las siguientes herramientas:

- [flutter](https://flutter.dev)
- [dartz](https://pub.dev/packages/dartz)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [freezed_annotation](https://pub.dev/packages/freezed)
- [get_it](https://pub.dev/packages/get_it)
- [injectable](https://pub.dev/packages/injectable)
- [path](https://pub.dev/packages/path)
- [sqflite](https://pub.dev/packages/sqflite)

### Cosas que se podrían agregar

Aquí una serie de cosas que se podrían agregar al proyecto:
| Característica | Descripción | He usado en el pasado |
|--|--|--|
| Autenticación | Se puede utilizar un sistema para guardar las credenciales del usuario de forma local, de modo que cuando cierre la aplicación no lo lleve de nuevo al login. También se puede agregar una opción para desloguear al usuario |[sqflite](https://pub.dev/packages/sqflite) [shared_preferences](https://pub.dev/packages/shared_preferences) [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage)|
| Carga de imagen | Se podría agregar la opción de una incluir una portada para las fábricas.|[image_picker](https://pub.dev/packages/image_picker) [image_cropper](https://pub.dev/packages/image_cropper)|
| Links | Se puede agregar la opción de abrir las páginas web de las fábricas, así como el mapa para la dirección, llamadas o mensajes para el teléfono etc.|[url_launcher](https://pub.dev/packages/url_launcher)|
