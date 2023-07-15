import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServicesSearchPage {
  Future<List<dynamic>> fetchSearchResults() async {
    final url =
        'https://dev-publicaciones.masmesa.com/v1/es/public/publications?timezone=America/Lima&datetime=2023-06-23%2013:00';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      return responseData['data'];
    } else {
      throw Exception('Error en la solicitud: ${response.statusCode}');
    }
  }
}
