import 'package:http/http.dart' as http;
import 'package:prueba2/src/common/constant.dart';
//import 'dart:convert';

import 'package:prueba2/src/common/validate.dart';

class HTTPExecute {
  String endPointUrl;
  HTTPExecute(this.endPointUrl);

  get() {}
  post() {}
  put() {}
  delete() {}

  loadGet() async {
    var response = await http.get(Uri.parse(endPointUrl));
    return (response.statusCode >= 200 && response.statusCode < 300)
        ? response.body.toString()
        : Validate.errorWidget(Constant.SERVER_ERROR,
            content: "${response.statusCode}");
  }

  loadPost(Map parameters) async {
    var response = await http.post(Uri.parse(endPointUrl), body: parameters);
    validateResponse(response);
  }

  loadDelete() async {
    var response = await http.delete(Uri.parse(endPointUrl));
    validateResponse(response);
  }

  loadPut(Map parameters) async {
    var response = await http.put(Uri.parse(endPointUrl), body: parameters);
    validateResponse(response);
  }

  validateResponse(response) {
    return (response.statusCode >= 200 && response.statusCode < 300)
        ? response.body.toString()
        : Validate.errorWidget(Constant.SERVER_ERROR,
            content: "${response.statusCode}");
  }
}
