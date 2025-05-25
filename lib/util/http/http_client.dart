import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper {
  // URL base para las solicitudes HTTP.
  // Reemplaza 'https://api.example.com/' con la URL base de tu API.
  static const String _baseUrl = 'https://api.example.com/';

  /// Realiza una solicitud HTTP GET al endpoint especificado.
  /// Parámetros:
  /// - [endpoint]: El endpoint de la API al que se realizará la solicitud.
  /// Retorna:
  /// - Un `Future` que contiene un mapa (`Map<String, dynamic>`) con los datos de la respuesta.
  /// Lanza:
  /// - Una excepción si la solicitud falla o el código de estado no es 200.
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  /// Realiza una solicitud HTTP POST al endpoint especificado.
  /// Parámetros:
  /// - [endpoint]: El endpoint de la API al que se enviará la solicitud.
  /// - [data]: Los datos que se enviarán en el cuerpo de la solicitud (en formato JSON).
  /// Retorna:
  /// - Un `Future` que contiene un mapa (`Map<String, dynamic>`) con los datos de la respuesta.
  /// Lanza:
  /// - Una excepción si la solicitud falla o el código de estado no es 200.
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  /// Realiza una solicitud HTTP PUT al endpoint especificado.
  /// Parámetros:
  /// - [endpoint]: El endpoint de la API al que se enviará la solicitud.
  /// - [data]: Los datos que se enviarán en el cuerpo de la solicitud (en formato JSON).
  /// Retorna:
  /// - Un `Future` que contiene un mapa (`Map<String, dynamic>`) con los datos de la respuesta.
  /// Lanza:
  /// - Una excepción si la solicitud falla o el código de estado no es 200.
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  /// Realiza una solicitud HTTP DELETE al endpoint especificado.
  /// Parámetros:
  /// - [endpoint]: El endpoint de la API al que se enviará la solicitud.
  /// Retorna:
  /// - Un `Future` que contiene un mapa (`Map<String, dynamic>`) con los datos de la respuesta.
  /// Lanza:
  /// - Una excepción si la solicitud falla o el código de estado no es 200.
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  /// Maneja la respuesta HTTP y convierte el cuerpo en un mapa (`Map<String, dynamic>`).
  /// Parámetros:
  /// - [response]: La respuesta HTTP recibida.
  /// Retorna:
  /// - Un mapa (`Map<String, dynamic>`) con los datos de la respuesta si el código de estado es 200.
  /// Lanza:
  /// - Una excepción si el código de estado no es 200.
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}