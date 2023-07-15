import 'package:flutter/material.dart';
import 'package:prueba2/src/common/constant.dart';

typedef void VoidcallBackParam(Map parameters);

class Validate {
  static Widget errorWidget(String error, {String content = ""}) {
    switch (error) {
      case Constant.CONNECTION_DISABLED:
        return textError("Error en la conexión $content");
      case Constant.WIFI_DISABLED:
        return textError("Error en la conexión wifi $content");
      case Constant.SERVER_ERROR:
        return textError("Error en la conexión del servidor $content");
      case Constant.MESSAGE:
        return textError(content);
      default:
        return Container();
    }
  }

  static textError(String text) {
    return Text(text, style: const TextStyle(fontSize: 40, color: Colors.red));
  }

  static connectionError(
      VoidCallback method, VoidcallBackParam, Map parameters) {}
}
