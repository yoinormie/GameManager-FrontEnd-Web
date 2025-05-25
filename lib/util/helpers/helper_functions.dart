import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFunctions {
  /// Devuelve un color basado en el nombre proporcionado como cadena.
  /// Si el nombre no coincide con ningún color, devuelve `null`.
  static Color? getColor(String value) {
    if (value == "Green") {
      return Colors.green;
    } else if (value == "Red") {
      return Colors.red;
    } else if (value == "Blue") {
      return Colors.blue;
    } else if (value == "Yellow") {
      return Colors.yellow;
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "White") {
      return Colors.white;
    } else if (value == "Pink") {
      return Colors.pink;
    } else if (value == "Purple") {
      return Colors.purple;
    } else if (value == "Orange") {
      return Colors.orange;
    } else if (value == "Grey") {
      return Colors.grey;
    } else {
      return null;
    }
  }

  /// Muestra un `SnackBar` con el mensaje proporcionado.
  /// Utiliza el contexto global de `Get` para acceder al `ScaffoldMessenger`.
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(
      Get.context!,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  /// Muestra un cuadro de diálogo de alerta con un título y un mensaje.
  /// Incluye un botón "OK" para cerrar el cuadro de diálogo.
  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  /// Navega a una nueva pantalla utilizando el `Navigator`.
  /// Requiere el contexto actual y el widget de la pantalla de destino.
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  /// Trunca un texto si excede la longitud máxima especificada.
  /// Agrega "..." al final si el texto es más largo que `maxLength`.
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  /// Devuelve `true` si el tema actual es de modo oscuro.
  /// Utiliza el contexto para acceder al tema.
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  /// Devuelve el tamaño de la pantalla actual.
  /// Utiliza el contexto global de `Get` para acceder a `MediaQuery`.
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  /// Devuelve la altura de la pantalla actual.
  /// Utiliza el contexto global de `Get` para acceder a `MediaQuery`.
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// Devuelve el ancho de la pantalla actual.
  /// Utiliza el contexto global de `Get` para acceder a `MediaQuery`.
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  /// Devuelve una fecha formateada como cadena.
  /// El formato predeterminado es 'dd MMM yyyy', pero puede ser personalizado.
  static String getFormattedDate(
    DateTime date, {
    String format = 'dd MMM yyyy',
  }) {
    return DateFormat(format).format(date);
  }

  /// Elimina duplicados de una lista y devuelve una nueva lista sin duplicados.
  /// Utiliza un `Set` para garantizar la unicidad de los elementos.
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  /// Agrupa una lista de widgets en filas con un tamaño máximo especificado.
  /// Devuelve una lista de widgets `Row` que contienen los widgets agrupados.
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i,
        i + rowSize > widgets.length ? widgets.length : i + rowSize,
      );
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}