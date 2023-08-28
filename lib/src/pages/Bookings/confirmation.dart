import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/Bookings/booking_add_ons.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35),
                child: Image(
                  image: AssetImage(
                    "assets/Logo.png",
                  ),
                  height: 25,
                  width: 100,
                  //fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'Reservación en Harry’s Stake',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF443F56),
                  fontSize: 20,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: 31,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: ShapeDecoration(
                      color: Color(0xFFFF552B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2 Pers  | Mié 28 de Oct  | 14:00 Hrs | Terraza',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFC6C4CE),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: Text(
                  'Proporcione su correo electrónico para completar su reserva',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF666276),
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Text(
                      'Correo electrónico',
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookingAddOns(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFF552B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Continuar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 90,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFB4B1C2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'o',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Container(
                      width: 90,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFB4B1C2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 29,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4267B2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.157,
                      ),
                      SvgPicture.asset(
                        "assets/icons/fb2.svg",
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Conectar con Facebook',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.20,
                      ),
                      SvgPicture.asset(
                        "assets/icons/google_logo.svg",
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Conectar con Google',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/lock.svg",
                      height: 20,
                      width: 20,
                      color: Color(0xFF5C586B),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'No publicamos sin tu autorización',
                      style: TextStyle(
                        color: Color(0xFF5C586B),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/rotate_right.svg",
                      height: 20,
                      width: 20,
                      color: Color(0xFF5C586B),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '¡Esto es mucho más rapido!',
                      style: TextStyle(
                        color: Color(0xFF5C586B),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
