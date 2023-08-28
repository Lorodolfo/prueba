// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/user_profile/account/account_options/payment_methods/add_card.dart';
import 'package:prueba2/src/pages/user_profile/bottom_nav.dart';
import 'package:prueba2/src/pages/user_profile/user_profile_picture.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  bool isDarkMode = false;
  int index = 0;
  BottomNav? myBNB;
  bool isChecked = false;
  bool isChecked2 = false;
  @override
  void initState() {
    myBNB = BottomNav(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double margins = MediaQuery.of(context).size.width * 0.05;
    return Scaffold(
      appBar: AppBarWidget(
        isDarkMode: isDarkMode,
        onDarkModeChanged: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
      bottomNavigationBar: myBNB,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            const UserProfilePicture(),
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      "assets/icons/cross.svg",
                      height: 30,
                      width: 30,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: margins),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Preferencias de notificación',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 16,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 312.68,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFEFECF3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Información de pago y Titular',
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 16,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/creditCard.svg",
                                  height: 18,
                                  width: 18,
                                  color: const Color(0xFFFD5631),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Información del titular',
                                  style: TextStyle(
                                    color: Color(0xFFFD5631),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '**** **** *** 2489',
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Expira el 26/28',
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 37.35,
                        ),
                        Container(
                          height: 54,
                          width: 94,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 15,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Image.asset("assets/visa.jpg"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: margins),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.manage_search,
                              color: Color(0xFFFD5631),
                              size: 27,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Información del titular",
                              style: TextStyle(
                                color: Color(0xFFFD5631),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ramón Testera ',
                          style: TextStyle(
                            color: Color(0xFF666276),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '+52 998 847 1336',
                          style: TextStyle(
                            color: Color(0xFF666276),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                          width: 222,
                          child: Text(
                            'Km. 14.2, Kukulkan 1, Zona Hotelera, 77500 Cancún, Q.R.',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/creditCard.svg",
                          height: 18,
                          width: 18,
                          color: const Color(0xFFFD5631),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'Actualizar información del titular',
                          style: TextStyle(
                            color: Color(0xFFFD5631),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/creditCard.svg",
                          height: 18,
                          width: 18,
                          color: const Color(0xFFFD5631),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'Actualizar método de pago',
                          style: TextStyle(
                            color: Color(0xFFFD5631),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Container(
                    width: 312.68,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFEFECF3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Tarjetas guardadas',
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 18,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 113,
                          width: 150,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 15,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 12,
                                left: 6,
                                child: Image.asset(
                                  "assets/visa.jpg",
                                  width: 40,
                                  height: 20,
                                ),
                              ),
                              Positioned(
                                top: 7,
                                right: 8,
                                child: Checkbox(
                                  activeColor: const Color(0xFF45CB85),
                                  checkColor: const Color(0xFF45CB85),
                                  value: isChecked,
                                  shape: const CircleBorder(),
                                  onChanged: (bool? value1) {
                                    setState(() {
                                      isChecked = value1!;
                                    });
                                  },
                                ),
                              ),
                              const Positioned(
                                top: 54,
                                left: 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '**** **** *** 2489',
                                      style: TextStyle(
                                        color: Color(0xFF666276),
                                        fontSize: 12,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      'Expira el 26/28',
                                      style: TextStyle(
                                        color: Color(0xFF666276),
                                        fontSize: 12,
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
                        const SizedBox(width: 16),
                        Container(
                          height: 113,
                          width: 150,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 15,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 12,
                                left: 6,
                                child: Image.asset(
                                  "assets/mastercard.png",
                                  width: 40,
                                  height: 20,
                                ),
                              ),
                              Positioned(
                                top: 7,
                                right: 8,
                                child: Checkbox(
                                  activeColor: const Color(0xFF45CB85),
                                  checkColor: const Color(0xFF45CB85),
                                  value: isChecked2,
                                  shape: const CircleBorder(),
                                  onChanged: (bool? value2) {
                                    setState(() {
                                      isChecked2 = value2!;
                                    });
                                  },
                                ),
                              ),
                              const Positioned(
                                top: 54,
                                left: 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '**** **** *** 5268',
                                      style: TextStyle(
                                        color: Color(0xFF666276),
                                        fontSize: 12,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      'Expira el 17/27',
                                      style: TextStyle(
                                        color: Color(0xFF666276),
                                        fontSize: 12,
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 113,
                          width: 150,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 15,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 34,
                                left: 67.21,
                                child: Container(
                                  width: 21.60,
                                  height: 23,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFDDDDDD),
                                    shape: OvalBorder(),
                                  ),
                                  child: const Center(
                                    child: SizedBox(
                                      width: 9.39,
                                      child: Text(
                                        '+',
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
                              const Positioned(
                                top: 59.63,
                                left: 31.93,
                                child: Text(
                                  'Añadir Tarjeta',
                                  style: TextStyle(
                                    color: Color(0xFFDDDDDD),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .084),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 38,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 7),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFFF552B)),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 104,
                                child: Text(
                                  'Eliminar tarjeta',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFF552B),
                                    fontSize: 13,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 14.93),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddCard(),
                              ),
                            );
                          },
                          child: Container(
                            width: 140,
                            height: 38,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17, vertical: 7),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFFF552B)),
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 104,
                                  child: Text(
                                    'Agregar tarjeta',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFFF552B),
                                      fontSize: 13,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Facturas',
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 16,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    width: 322.73,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFE4E4E4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Container(
                      //width: 322.73,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF7F7F7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      //width: MediaQuery.of(context).size.width * .89,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Fecha',
                            style: TextStyle(
                              color: Color(0xFFFD5631),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.133),
                          Text(
                            'N° de factura',
                            style: TextStyle(
                              color: Color(0xFFFD5631),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.08),
                          Text(
                            'Importe',
                            style: TextStyle(
                              color: Color(0xFFFD5631),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, right: 25),
                    child: SizedBox(
                      //width: 313,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '01/04/2022',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '000001',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '\$1,990.00',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 23.48),
                          SvgPicture.asset(
                            "assets/icons/file.svg",
                            color: const Color(0xFF9691A4),
                            height: 25,
                            width: 23.44,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.083),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Container(
                      width: 319.26,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFE4E4E4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, right: 25),
                    child: SizedBox(
                      //width: 313,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '01/04/2022',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '000001',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '\$1,990.00',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 23.48),
                          SvgPicture.asset(
                            "assets/icons/file.svg",
                            color: const Color(0xFF9691A4),
                            height: 25,
                            width: 23.44,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Container(
                      width: 319.26,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFE4E4E4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, right: 25),
                    child: SizedBox(
                      //width: 313,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '01/04/2022',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '000001',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '\$1,990.00',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 23.48),
                          SvgPicture.asset(
                            "assets/icons/file.svg",
                            color: const Color(0xFF9691A4),
                            height: 25,
                            width: 23.44,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Container(
                      width: 319.26,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFE4E4E4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, right: 25),
                    child: SizedBox(
                      //width: 313,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '01/04/2022',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '000001',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '\$1,990.00',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 23.48),
                          SvgPicture.asset(
                            "assets/icons/file.svg",
                            color: const Color(0xFF9691A4),
                            height: 25,
                            width: 23.44,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Container(
                      width: 319.26,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFE4E4E4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, right: 25),
                    child: SizedBox(
                      //width: 313,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '01/04/2022',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '000001',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.122),
                          const Text(
                            '\$1,990.00',
                            style: TextStyle(
                              color: Color(0xFF666276),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 23.48),
                          SvgPicture.asset(
                            "assets/icons/file.svg",
                            color: const Color(0xFF9691A4),
                            height: 25,
                            width: 23.44,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Container(
                      width: 319.26,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFE4E4E4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/circleplus.svg",
                          color: const Color(0xFFFF552B),
                          height: 18,
                          width: 18,
                        ),
                        const Text(
                          'Ver mas',
                          style: TextStyle(
                            color: Color(0xFFFD5631),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
