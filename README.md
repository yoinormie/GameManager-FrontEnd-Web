# Frontend Aplicación GameManager (Nexora)

## Descripción del Proyecto
**GameManager** es una aplicación frontend desarrollada en **Flutter** que tiene como objetivo unificar diferentes bibliotecas de videojuegos en una sola plataforma. Actualmente, el backend, desarrollado en **Java** con **Spring Boot**, gestiona datos relacionados con las bibliotecas de videojuegos de **PlayStation** y **Steam**. Este frontend proporciona una interfaz moderna e intuitiva para que los usuarios puedan interactuar con sus bibliotecas de videojuegos de manera centralizada.

---

## Tecnologías Utilizadas

### **Frontend**
- **Flutter**: Framework principal para el desarrollo de la interfaz de usuario.
- **Dart**: Lenguaje de programación utilizado en Flutter.
- **GetX**: Para la gestión del estado, navegación y dependencias.
- **Firebase**: Para autenticación y almacenamiento en la nube (a futuro).
- **HTTP**: Para realizar solicitudes al backend.

### **Backend**
- **Java**: Lenguaje de programación utilizado para el backend.
- **Spring Boot**: Framework para la creación de APIs RESTful.
- **Base de Datos**: Gestión de datos de videojuegos (PlayStation y Steam).

---

## Características Principales

### **Frontend**
1. **Unificación de Bibliotecas de Videojuegos**:
   - Permite a los usuarios visualizar y gestionar sus videojuegos de diferentes plataformas (PlayStation y Steam).

2. **Interfaz de Usuario Moderna**:
   - Diseño limpio y responsivo, adaptado a diferentes tamaños de pantalla.
   - Uso de componentes personalizados como `TNotificationCard`, `THomeCategories`, y `TPromoSlider`.

3. **Gestión de Notificaciones**:
   - Los usuarios pueden recibir notificaciones personalizadas relacionadas con sus bibliotecas de videojuegos.

4. **Configuraciones Personalizables**:
   - Opciones como geolocalización, calidad de imágenes en alta definición, y modo seguro para búsquedas.

5. **Autenticación**:
   - Integración con Firebase para el inicio de sesión y registro de usuarios (a futuro).

6. **Conexión con el Backend**:
   - Realiza solicitudes HTTP al backend para obtener y gestionar datos de las bibliotecas de videojuegos.

---

## Estructura del Proyecto

### **Frontend**
El proyecto está organizado de manera modular para facilitar la escalabilidad y el mantenimiento:

- **`lib/`**: Carpeta principal del proyecto.
  - **`common`**: Contiene widgets reutilizables, estilos y configuraciones comunes que se utilizan en toda la aplicación. Algunos ejemplos incluyen:
    - **`styles/`**: Define estilos reutilizables como márgenes, paddings y otros valores de espaciado. Por ejemplo:
      - `spacing_styles.dart`: Contiene configuraciones de espaciado predefinidas, como `paddingWithAppBarHeight`, que asegura un diseño consistente en las pantallas.
    - **`widgets/`**: Incluye componentes reutilizables como botones, tarjetas, encabezados, etc.
      - **`appbar/`**: Contiene widgets personalizados para barras de navegación superiores, como encabezados con títulos y acciones.
      - **`buttons/`**: Define botones reutilizables, como botones de acción (`NotificationButton`) o botones de navegación.
      - **`custom_shapes/`**: Incluye widgets con formas personalizadas.
        - **`containers/`**: Widgets que envuelven contenido con bordes redondeados o estilos específicos.
        - **`curved_edges/`**: Widgets que aplican bordes curvados a elementos visuales.
      - **`image_text_widgets/`**: Widgets que combinan imágenes y texto, como `TVerticalImageText`, para mostrar categorías o elementos visuales.
      - **`images/`**: Widgets relacionados con la visualización de imágenes.
      - **`list_tiles/`**: Widgets para mostrar elementos en formato de lista con íconos y texto.
      - **`login_signup/`**: Widgets específicos para pantallas de inicio de sesión y registro.
      - **`products/`**: Widgets relacionados con la visualización de productos.
        - **`cart/`**: Widgets específicos para la gestión del carrito de compras.
      - **`success_screen/`**: Widgets para mostrar pantallas de éxito tras completar una acción.
      - **`texts/`**: Widgets personalizados para mostrar texto con estilos específicos.

  - **`features/`**: Contiene las diferentes funcionalidades de la aplicación.
    - **`authentication/`**: Pantallas y controladores relacionados con la autenticación, como inicio de sesión, registro y recuperación de contraseñas.
    - **`personalization/`**: Funcionalidades personalizables como notificaciones, configuraciones de usuario y temas.
    - **`shop/`**: Pantallas relacionadas con la biblioteca de videojuegos, como categorías, detalles de productos y promociones.

  - **`util/`**: Recursos compartidos como constantes, temas, y utilidades HTTP.
    - **`constants/`**: Define constantes utilizadas en toda la aplicación, como colores (`TColors`), tamaños (`TSize`) y cadenas de texto.
    - **`device/`**: Permite la detección de dispositivos y sus características, como tamaños de pantalla o plataformas.
    - **`formatters/`**: Utilidades para formatear datos y textos, como fechas o números.
    - **`helpers/`**: Funciones auxiliares para simplificar tareas comunes, como validaciones o cálculos.
    - **`http/`**: Contiene clases para realizar solicitudes HTTP al backend, como `THttpHelper`, que centraliza la lógica de comunicación con la API.
    - **`local_storage/`**: Maneja el almacenamiento local de datos, como preferencias del usuario o tokens de autenticación.
    - **`logging/`**: Utilidades para registrar eventos y errores en la aplicación.
    - **`theme/`**: Define los temas visuales de la aplicación.
      - **`custom_themes/`**: Contiene temas personalizados, como configuraciones de colores y estilos para modo claro y oscuro.
    - **`validators/`**: Funciones para validar entradas del usuario, como correos electrónicos o contraseñas.

  - **`app.dart`**: Configuración principal de la aplicación, incluyendo temas, navegación y configuración inicial.
  - **`main.dart`**: Punto de entrada de la aplicación. Inicializa dependencias y ejecuta la aplicación.
  - **`navigation_menu.dart`**: Define la navegación y las rutas de la aplicación, como el menú inferior o las rutas principales.

### **Backend**
El backend está desarrollado en **Spring Boot** y sigue una arquitectura RESTful. Proporciona los datos necesarios para el frontend a través de APIs.

---

## Flujo de la Aplicación

1. **Pantalla de Onboarding**:
   - Introduce al usuario a las características principales de la aplicación.
   - Botón "Skip" para saltar directamente al inicio de sesión.

2. **Inicio de Sesión y Registro**:
   - Los usuarios pueden iniciar sesión o registrarse utilizando Firebase (en progreso).

3. **Pantalla Principal**:
   - Muestra las categorías populares de videojuegos.
   - Incluye un carrusel de promociones y una lista de videojuegos destacados.

4. **Librería de Videojuegos**:
   - Los usuarios pueden explorar sus videojuegos de PlayStation y Steam.
   - Posibilidad de filtrar y buscar videojuegos por diferentes criterios.

5. **Notificaciones**:
   - Los usuarios pueden ver notificaciones relacionadas con sus bibliotecas de videojuegos.

6. **Seguridad**:
   - Inicio de sesion con QR para mayor seguridad (en progreso).

7. **Perfil**:
   - Los usuarios pueden gestionar su perfil, incluyendo configuraciones de notificaciones y preferencias de visualización.

---

## Integración con el Backend

### **Backend (Spring Boot)**
- **Lenguaje**: Java.
- **Framework**: Spring Boot.
- **Base de Datos**: Gestión de datos de videojuegos de PlayStation y Steam.
- **Endpoints RESTful**:
  - Obtener videojuegos de PlayStation y Steam.
  - Gestionar notificaciones y configuraciones del usuario.

### **Frontend (Flutter)**
- **HTTP Requests**: El frontend utiliza el paquete `http` para realizar solicitudes al backend.
- **Ejemplo de Consumo de API**:
  ```dart
  import 'dart:convert';
  import 'package:http/http.dart' as http;

  class ApiService {
    final String baseUrl = 'http://localhost:8080/api';

    Future<List<dynamic>> fetchGames() async {
      final response = await http.get(Uri.parse('$baseUrl/games'));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load games');
      }
    }
  }