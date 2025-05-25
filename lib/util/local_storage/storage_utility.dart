import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  // Implementación del patrón Singleton para garantizar una única instancia de la clase.
  static final TLocalStorage _instance = TLocalStorage._internal();

  // Constructor de fábrica que devuelve la instancia única.
  factory TLocalStorage() {
    return _instance;
  }

  // Constructor privado para evitar la creación de múltiples instancias.
  TLocalStorage._internal();

  // Instancia de GetStorage para manejar el almacenamiento local.
  final _storage = GetStorage();

  /// Guarda un valor en el almacenamiento local.
  ///
  /// - [key]: La clave asociada al valor que se desea guardar.
  /// - [value]: El valor que se desea guardar (puede ser de cualquier tipo).
  ///
  /// Retorna un `Future` que indica cuándo se completa la operación.
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  /// Lee un valor del almacenamiento local.
  ///
  /// - [key]: La clave asociada al valor que se desea leer.
  ///
  /// Retorna el valor almacenado asociado a la clave, o `null` si no existe.
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  /// Elimina un valor del almacenamiento local.
  ///
  /// - [key]: La clave asociada al valor que se desea eliminar.
  ///
  /// Retorna un `Future` que indica cuándo se completa la operación.
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  /// Elimina todos los datos almacenados en el almacenamiento local.
  ///
  /// Retorna un `Future` que indica cuándo se completa la operación.
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
