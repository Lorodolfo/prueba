import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServicesSearchPage {
  Future<dynamic> fetchSearchResults(
    String searchText,
    String fecha,
    String hora,
    int selectedPeople,
    String location,
  ) async {
    final encodedSearchText = Uri.encodeQueryComponent(searchText);
    final url =
        'https://dev-publicaciones.masmesa.com/v1/es/public/publications?timezone=America/Lima&search=$encodedSearchText&fecha=${fecha}&hora=${hora}&selectedPeople=$selectedPeople&location=$location';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      if (responseData['data'] != null && responseData['data']['data'] is List) {
        return responseData['data'];
      } else {
        throw Exception('Error: Data is not present or not in the expected format');
      }
    } else {
      throw Exception('Error en la solicitud: ${response.statusCode}');
    }
  }
}
