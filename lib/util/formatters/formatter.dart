import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_ES', symbol: '€').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Formato para números de España
    if (phoneNumber.startsWith('+34') && phoneNumber.length == 12) {
      // Número con prefijo internacional (+34)
      return '+34 ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6, 9)} ${phoneNumber.substring(9)}';
    } else if (phoneNumber.length == 9) {
      // Número nacional (9 dígitos)
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 10) {
      // Formato para números de EE.UU. como ejemplo adicional
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      // Formato para números internacionales genéricos
      return '+${phoneNumber.substring(0, 4)} (${phoneNumber.substring(4, 7)}) ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  static String internacionalFormatPhoneNumber(String phoneNumber) {
    // Elimina todos los caracteres no numéricos
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extrae el código de país
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Construye el número formateado
    final formatttedNumber = StringBuffer();
    formatttedNumber.write('$countryCode ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;

      // Si el código de país es +1 (EE.UU.), el primer grupo tiene 3 dígitos
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      // Calcula el final del grupo, asegurándose de no exceder la longitud
      int end = (i + groupLength).clamp(0, digitsOnly.length);

      // Añade el grupo al número formateado
      formatttedNumber.write(digitsOnly.substring(i, end));

      // Añade un espacio si no es el último grupo
      if (end < digitsOnly.length) {
        formatttedNumber.write(' ');
      }

      // Avanza al siguiente grupo
      i = end;
    }

    // Devuelve el número formateado como una cadena
    return formatttedNumber.toString();
  }
}
