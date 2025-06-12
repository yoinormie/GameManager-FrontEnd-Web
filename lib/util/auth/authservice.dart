class AuthService {
  static String? _email;
  static String? _password;

  static bool register(String email, String password) {
    if (_email == null) {
      _email = email;
      _password = password;
      return true;
    }
    return false;
  }

  static bool login(String email, String password) {
    return _email == email && _password == password;
  }
}
