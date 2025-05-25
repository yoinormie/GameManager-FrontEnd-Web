class TValidator {
  /// Valida una dirección de correo electrónico.
  ///
  /// - [value]: La dirección de correo electrónico que se desea validar.
  ///
  /// Retorna:
  /// - Un mensaje de error si el correo es inválido o `null` si es válido.
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  /// Valida una contraseña.
  ///
  /// - [value]: La contraseña que se desea validar.
  ///
  /// Requisitos:
  /// - Debe tener al menos 6 caracteres.
  /// - Debe contener al menos una letra mayúscula.
  /// - Debe contener al menos un número.
  /// - Debe contener al menos un carácter especial.
  ///
  /// Retorna:
  /// - Un mensaje de error si la contraseña no cumple con los requisitos o `null` si es válida.
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  /// Valida un número de teléfono.
  ///
  /// - [value]: El número de teléfono que se desea validar.
  ///
  /// Requisitos:
  /// - Puede comenzar con un símbolo `+` (opcional).
  /// - Debe contener entre 10 y 15 dígitos.
  ///
  /// Retorna:
  /// - Un mensaje de error si el número de teléfono es inválido o `null` si es válido.
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    final phoneRegExp = RegExp(
      r'^\+?[0-9]{10,15}$',
    );
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number';
    }
    return null;
  }
}
