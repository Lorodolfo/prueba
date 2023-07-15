import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'dart:convert';
//import 'package:http/http.dart' as http;
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:prueba2/src/pages/user_profile/user_profile_page.dart';
import 'package:prueba2/src/utils/api_services.dart';

class SignUpModal extends StatefulWidget {
  const SignUpModal({super.key});

  @override
  State<SignUpModal> createState() => _SignUpModalState();
}

class _SignUpModalState extends State<SignUpModal> {
  final ApiServices _userService = ApiServices();
  bool? isTerminos = false;
  bool isTerminosAccepted = false;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String phoneExtension = '52';
  String codeCountry = 'MX';

  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: 'Hola! Bienvenidos a '),
                    TextSpan(
                      text: '+mesa',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 85, 43),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "X",
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
          color: Colors.black45,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/check.svg"),
              const SizedBox(
                width: 3.0,
              ),
              const Text(
                "Reservar los mejores lugares al instante",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/check.svg"),
              const SizedBox(
                width: 3.0,
              ),
              const Text(
                "Soporte en cada reservacion",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/check.svg"),
              const SizedBox(
                width: 3.0,
              ),
              const Text(
                "Reseña tus lugares favoritos",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/check.svg"),
              const SizedBox(
                width: 3.0,
              ),
              const Text(
                "Gana puntos en cada reservacion",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/check.svg"),
              const SizedBox(
                width: 3.0,
              ),
              const Text(
                "Miles de horarios disponibles con\ngrandes descuentos",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              const Text(
                "¿Ya tienes una cuenta?",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 5.0,
              ),
              GestureDetector(
                child: const Text(
                  "Iniciar sesión",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 85, 43),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF4267B2),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 50,
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1.0),
                child: SvgPicture.asset(
                  "assets/icons/facebook.svg",
                  height: 30,
                  width: 30,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                "Registrate con Facebook",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black38),
          ),
          height: 50,
          width: 2500,
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: SvgPicture.asset("assets/icons/google_logo.svg"),
              ),
              const SizedBox(
                width: 30,
              ),
              const Center(
                child: Text(
                  "Registrate con google",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.black45,
                    height: 36,
                  )),
            ),
            const Text("OR"),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: const Divider(
                    color: Colors.black45,
                    height: 36,
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: const Text("Nombre completo"),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50,
          width: 350,
          child: TextFormField(
            controller: fullNameController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Nombre y apellido"),
            keyboardType: TextInputType.name,

            //controller:,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Correo electronico"),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50,
          width: 350,
          child: TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
            //controller:,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 70,
          width: 350,
          child: IntlPhoneField(
              controller: phoneController,
              initialCountryCode: "MX",
              decoration: const InputDecoration(
                labelText: "Phone number",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
              onCountryChanged: (phoneCountry) {
                setState(() {
                  phoneExtension = phoneCountry.dialCode!;
                  codeCountry = phoneCountry.code!;
                });
              }),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Contraseña"),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: 350,
          child: TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              labelText: "Contraseña",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Confirmar contraseña"),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: 350,
          child: TextField(
            controller: confirmPasswordController,
            decoration: const InputDecoration(
              labelText: "Confirmar contraseña",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Checkbox(
                value: isTerminos,
                activeColor: const Color(0xFFFd5631),
                onChanged: (newBool) {
                  setState(() {
                    isTerminos = newBool!;
                    isTerminosAccepted = newBool!;
                  });
                }),
            const SizedBox(
              width: 5,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(text: 'Al unirme acepto los'),
                  TextSpan(
                    text: 'Terminos del\nservicio',
                    style: TextStyle(
                        color: Color(0xFFFd5631), fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'y el',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: 'Aviso de privacidad',
                    style: TextStyle(
                        color: Color(0xFFFd5631), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        IgnorePointer(
          ignoring: !isTerminosAccepted,
          child: GestureDetector(
            onTap: () {
              final String phoneNumber = phoneController.text.toString();
              _userService.registerUser(
                fullNameController.text.toString(),
                emailController.text.toString(),
                passwordController.text.toString(),
                confirmPasswordController.text.toString(),
                phoneNumber,
                phoneExtension,
                codeCountry,
                isTerminos!,
              );
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    height: 30,
                    width: 80,
                    child: const Center(
                      child: Text("Usuario registrado con exito"),
                    ),
                  ),
                ),
              );
              Future.delayed(const Duration(seconds: 1), () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserProfilePage(),
                  ),
                );
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color:
                    isTerminosAccepted ? const Color(0xFFFd5631) : Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Registrate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
