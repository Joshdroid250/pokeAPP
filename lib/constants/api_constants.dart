class ApiConstants {
  static String baseUrl = 'https://pokeapi.co/api/v2/pokemon?limit=151 ';
  static String pokendpoint = '?limit=151'; // Esta variable almacenará el endpoint dinámico.

  // Método para construir la URL completa con el endpoint actual.
  static String buildUrl() {
    return baseUrl + pokendpoint;
  }

  // Método para cambiar el endpoint.
  static void setEndpoint(String newEndpoint) {
    pokendpoint = newEndpoint;
  }
}