import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:prueba2/src/pages/user_profile/user_profile_page.dart';
import 'package:prueba2/src/widgets/sign_up.dart';

class LoginModal extends StatefulWidget {
  const LoginModal({super.key});

  @override
  State<LoginModal> createState() => _LoginModalState();
}

class _LoginModalState extends State<LoginModal> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    left: MediaQuery.of(context).size.width * .09,
                    right: MediaQuery.of(context).size.width * .09,
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
                left: MediaQuery.of(context).size.width * .09,
                right: MediaQuery.of(context).size.width * .09,
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
          height: 37,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .09,
            right: MediaQuery.of(context).size.width * .09,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "¿No tienes una cuenta?",
                style: TextStyle(
                  color: Color(0xFF666276),
                  fontSize: 15,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w300,
                ),
              ),
              GestureDetector(
                onTap: () {
                  openDialog(context);
                },
                child: const Text(
                  "Regístrate aquí",
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
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF4267B2),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 45,
          width: MediaQuery.of(context).size.width * 0.8,
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
                "Iniciar sesión con Facebook",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: 'Noto Sans',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFD5D2DC),
            ),
          ),
          height: 45,
          width: MediaQuery.of(context).size.width * 0.8,
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
                  "Sign with google",
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
              "Ó",
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
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1),
              child: const Text(
                "Correo electronico",
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
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFD5D2DC),
            ),
          ),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              //hintText: "Email",
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Contraseña",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      color: Color(0xFF1f1b2d),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 255, 85, 43),
                  ),
                ),
              ]),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFD5D2DC),
            ),
          ),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              //hintText: "Password",
              border: const OutlineInputBorder(),
              suffix: InkWell(
                onTap: () {},
                /*setState(() {
              passToggle = !passToggle;
            }),*/
                child:
                    Icon(passToggle ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            //controller:,
          ),
        ),
        const SizedBox(height: 40),
        GestureDetector(
          onTap: () {
            login(
              emailController.text.toString(),
              passwordController.text.toString(),
            );
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: const Color(0xFFFd5631),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text(
                "Iniciar sesión",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void login(String email, String password) async {
    Response response = await post(
      Uri.parse('https://dev-usuarios.masmesa.com/api/v1/es/auth/bookersnap'),
      body: {
        "email": email,
        "password": password,
      },
    );
    if (response.statusCode == 200) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            height: 30,
            width: 80,
            child: const Center(
              child: Text("Usuario logueado"),
            ),
          ),
        ),
      );
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pop(context); // Cerrar el AlertDialog después de 1 segundo
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const UserProfilePage(), // Redirigir a UserProfilePage
          ),
        );
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            height: 40,
            width: 95,
            child: const Center(
              child: Text("Datos incorrectos, intente de nuevo"),
            ),
          ),
        ),
      );
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pop(context);
      });
    }
    try {} catch (e) {
      print(
        e.toString(),
      );
    }
  }

  void openDialog(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
          insetPadding: const EdgeInsets.only(left: 8, top: 10, right: 8),
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: SignUpModal(),
          ),
        ),
      );
}
