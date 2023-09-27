class ApiConstants {
  static String baseUrl = 'https://pokeapi.co/api/v2/pokemon/';
  static String pokendpoint = ''; // Esta variable almacenará el endpoint dinámico.

  // Método para construir la URL completa con el endpoint actual.
  static String buildUrl() {
    return baseUrl + pokendpoint;
  }

  // Método para cambiar el endpoint.
  static void setEndpoint(String newEndpoint) {
    pokendpoint = newEndpoint;
  }
}