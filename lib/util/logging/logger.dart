import 'package:logger/logger.dart';

class TLoggerHelper {
  // Instancia de Logger configurada con PrettyPrinter y nivel de depuración.
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  /// Registra un mensaje de depuración.
  ///
  /// - [message]: El mensaje que se desea registrar.
  static void debug(String message) {
    _logger.d(message);
  }

  /// Registra un mensaje informativo.
  ///
  /// - [message]: El mensaje que se desea registrar.
  static void info(String message) {
    _logger.i(message);
  }

  /// Registra un mensaje de advertencia.
  ///
  /// - [message]: El mensaje que se desea registrar.
  static void warning(String message) {
    _logger.w(message);
  }

  /// Registra un mensaje de error.
  ///
  /// - [message]: El mensaje que describe el error.
  /// - [error]: (Opcional) Información adicional sobre el error.
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
