import 'dart:convert';

import 'package:http/http.dart' as http;

/*class ApiServicesExp {
  Future<dynamic> fetchSearchResults(
      //String searchText,
      ) async {
    //final encodedSearchText = Uri.encodeQueryComponent(searchText);
    const url =
        'https://dev-publicaciones.masmesa.com/v1/es/experiences/actives';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      if (responseData['data'] != null &&
          responseData['data']['data'] is List) {
        return responseData['data'];
      } else {
        throw Exception(
            'Error: Data is not present or not in the expected format');
      }
    } else {
      throw Exception('Error en la solicitud: ${response.statusCode}');
    }
  }
}
*/
class ApiServicesExp {
  Future<dynamic> fetchSearchResults() async {
    const url =
        'https://dev-publicaciones.masmesa.com/v1/es/experiences/actives?date=1';
    final response = await http.get(Uri.parse(url));

    print(response.body);
    print(response.statusCode);
    // Agrega esta línea para imprimir la respuesta

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      if (responseData['data'] != null &&
          responseData['data']['data'] is List) {
        return responseData['data']['data'];
      } else {
        throw Exception(
            'Error: Data is not present or not in the expected format');
      }
    } else {
      throw Exception('Error en la solicitud: ${response.statusCode}');
    }
  }
}
