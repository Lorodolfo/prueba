import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:prueba2/src/pages/user_profile/user_profile_page.dart';
import 'package:prueba2/src/widgets/sign_up.dart';
import 'package:prueba2/src/widgets/successScreen.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 26,
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.0, left: 10),
              child: Text(
                "Reserva los mejores lugares\nahora.",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          color: Colors.black38,
          thickness: 2,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              "¿No tienes una cuenta?",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            GestureDetector(
              onTap: () {
                openDialog(context);
              },
              child: const Text(
                "Registrate aqui",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 85, 43),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF4267B2),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 50,
          width: 350,
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
                "Iniciar sesion con Facebook",
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
          width: 350,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1.0),
                child: SvgPicture.asset("assets/icons/google_logo.svg"),
              ),
              const SizedBox(
                width: 4,
              ),
              const Center(
                child: Text(
                  "Sign with google",
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
            const Text("O"),
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
          child: const Text("Correo electronico"),
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
                border: OutlineInputBorder(), hintText: "Email"),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Contraseña"),
              Text(
                "¿Olvidaste tu contraseña?",
                style: TextStyle(color: Color.fromARGB(255, 255, 85, 43)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50,
          width: 350,
          child: TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "Password",
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
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            login(
              emailController.text.toString(),
              passwordController.text.toString(),
            );
          },
          child: Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: const Color(0xFFFd5631),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "Iniciar Sesion",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
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
                UserProfilePage(), // Redirigir a UserProfilePage
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
