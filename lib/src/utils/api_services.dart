import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  Future<void> registerUser(
    String fullName,
    String email,
    String password,
    String passwordConfirmation,
    String phoneNumber,
    String phoneExtension,
    String codeCountry,
    bool isTerminos,
  ) async {
    const baseUrl = 'https://dev-usuarios.masmesa.com/api/v1/es/user';
    final url = Uri.parse(baseUrl);

    final requestData = {
      "fullname": fullName,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirmation,
      "phone": phoneNumber,
      "phone_extension": phoneExtension,
      "code_country": codeCountry,
      "terms_conditions": isTerminos == true ? "1" : "0",
    };

    print(requestData);
    try {
      final response = await http.post(url, body: requestData);

      if (response.statusCode == 200) {
        print("Usuario registrado con éxito");
      } else {
        print("Ha ocurrido un error al registrar el usuario");
      }
    } catch (e) {
      print("Error desconocido: ${e.toString()}");
    }
  }

  Future myCarouselNews() async {
    final response = await http.get(Uri.https('dummyJson.com', 'products'));
    final body = jsonDecode(response.body);
    return body;
  }

  Future usersSingUp() async {}
}
