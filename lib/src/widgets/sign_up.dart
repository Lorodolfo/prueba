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
      children: [
        Stack(
          children: [
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFF1f1b2d),
                        fontSize: 21,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(text: 'Hola! Bienvenidos a '),
                        TextSpan(
                          text: '+mesa',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 85, 43),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 20,
              right: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "X",
                  style: TextStyle(
                    color: Color(0xFF666276),
                    fontSize: 20,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.08,
                right: MediaQuery.of(context).size.width * 0.08,
              ),
              child: const Text(
                "Reserva los mejores\nlugares ahora.",
                style: TextStyle(
                  color: Color(0xFF1f1b2d),
                  fontSize: 22,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.08,
          ),
          child: const Row(
            children: [
              Icon(Icons.check_circle_outline,
                  color: Color(0xFFfd5631), size: 15),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Soporte en cada reservación",
                style: TextStyle(
                    color: Color(0xFF666276),
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 7,
            left: MediaQuery.of(context).size.width * 0.08,
          ),
          child: const Row(
            children: [
              Icon(Icons.check_circle_outline,
                  color: Color(0xFFfd5631), size: 15),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Reseña tus lugares favoritos",
                style: TextStyle(
                    color: Color(0xFF666276),
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 7,
            left: MediaQuery.of(context).size.width * 0.08,
          ),
          child: const Row(
            children: [
              Icon(Icons.check_circle_outline,
                  color: Color(0xFFfd5631), size: 15),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Gana puntos en cada reservación",
                style: TextStyle(
                    color: Color(0xFF666276),
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 7,
            left: MediaQuery.of(context).size.width * 0.08,
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check_circle_outline,
                  color: Color(0xFFfd5631), size: 15),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Miles de horarios disponibles con\ngrandes descuentos",
                style: TextStyle(
                    color: Color(0xFF666276),
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.08,
            right: MediaQuery.of(context).size.width * 0.08,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "¿Ya tienes una cuenta?",
                style: TextStyle(
                  color: Color(0xFF666276),
                  fontSize: 15,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w300,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Iniciar sesión",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 255, 85, 43),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF4267B2),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 45,
            //width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: SvgPicture.asset(
                    "assets/icons/facebook.svg",
                    height: 20,
                    width: 20,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  "Regístrate con Facebook",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: 'Noto Sans',
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFD5D2DC),
              ),
            ),
            height: 45,
            //width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: SvgPicture.asset(
                    "assets/icons/google_logo.svg",
                    height: 20,
                    width: 20,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Center(
                  child: Text(
                    "Regístrate con Google",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      color: Color(0xFF3C4043),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: const Divider(
                    color: Color(0xFFEFECF3),
                    height: 36,
                  )),
            ),
            const Text(
              "OR",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Noto Sans',
              ),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: const Divider(
                    color: Color(0xFFEFECF3),
                    height: 36,
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08),
              child: const Text(
                "Nombre completo",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Noto Sans',
                    color: Color(0xFF1f1b2d),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFD5D2DC),
              ),
            ),
            height: 50,
            //width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              controller: fullNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //hintText: "Nombre y apellido",
              ),
              keyboardType: TextInputType.name,

              //controller:,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08),
              child: const Text(
                "Correo electrónico",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Noto Sans',
                    color: Color(0xFF1f1b2d),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFD5D2DC),
              ),
            ),
            height: 50,
            //width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                //hintText: "Email",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              //controller:,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.08,
          ),
          child: IntlPhoneField(
            decoration: InputDecoration(
              labelText: 'Ingrese el número',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            controller: phoneController,
            initialCountryCode: "MX",
            keyboardType: TextInputType.phone,
            onCountryChanged: (phoneCountry) {
              setState(() {
                phoneExtension = phoneCountry.dialCode;
                codeCountry = phoneCountry.code;
              });
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08),
              child: const Text(
                "Contraseña",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Noto Sans',
                    color: Color(0xFF1f1b2d),
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              "(Mínimo 8 caracteres)",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Noto Sans',
                  color: Color(0xFF9691A4),
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFD5D2DC),
              ),
            ),
            height: 50,
            //width: MediaQuery.of(context).size.width * 0.8,
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
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08),
              child: const Text(
                "Confirmar contraseña",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Noto Sans',
                    color: Color(0xFF1f1b2d),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .08),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFD5D2DC),
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
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
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Row(
            children: [
              Checkbox(
                  value: isTerminos,
                  activeColor: const Color(0xFFFd5631),
                  onChanged: (newBool) {
                    setState(() {
                      isTerminos = newBool!;
                      isTerminosAccepted = newBool;
                    });
                  }),
              const SizedBox(
                width: 5,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    color: Color(0xFF666276),
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(text: 'Al unirme acepto los'),
                    TextSpan(
                      text: 'Terminos del\nServicio',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        color: Color(0xFFFd5631),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: 'y el',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        color: Color(0xFF666276),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: ' aviso de privacidad',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        color: Color(0xFFFd5631),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: IgnorePointer(
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
                  color: isTerminosAccepted
                      ? const Color(0xFFFd5631)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Registrarse",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
