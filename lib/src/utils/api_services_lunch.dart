import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServicesLunch {
  Future<dynamic> fetchSearchResults(
      //String searchText,
      ) async {
    //final encodedSearchText = Uri.encodeQueryComponent(searchText);
    const url =
        'https://dev-publicaciones.masmesa.com/v1/es/public/publications?timezone=America/Lima';
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
