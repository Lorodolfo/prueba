// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/pages/user_profile/bottom_nav.dart';
import 'package:prueba2/src/pages/user_profile/user_profile_picture.dart';
import 'package:prueba2/src/utils/reservations_lists.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ReservationsDetails extends StatefulWidget {
  const ReservationsDetails({super.key});

  @override
  State<ReservationsDetails> createState() => _ReservationsDetailsState();
}

class _ReservationsDetailsState extends State<ReservationsDetails> {
  int index = 0;
  double val = 0;
  double value = 0;
  BottomNav? myBNB;
  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  NextStatusSvg nextStatusSvg = NextStatusSvg();
  NextStatusColor nextStatusColor = NextStatusColor();
  NextStatusTitle nextStatusTitle = NextStatusTitle();
  TextEditingController phoneController = TextEditingController();
  String phoneExtension = '52';
  String codeCountry = 'MX';

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
          }),
      bottomNavigationBar: myBNB,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UserProfilePicture(),
            Padding(
              padding: EdgeInsets.only(left: margins),
              child: const Row(
                children: [
                  Text(
                    'Detalles de reservación',
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
              height: 28,
            ),
            Padding(
              padding: EdgeInsets.only(left: margins),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Se unió en Marzo 2022',
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: margins),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star_border_rounded,
                    size: 21,
                    color: Color(0xFFFF552B),
                  ),
                  const SizedBox(width: 3),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '0',
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' Reseñas',
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  SvgPicture.asset(
                    "assets/icons/location.svg",
                    height: 19,
                    width: 19,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    'Cancún',
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margins),
              child: Container(
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFD6D6D6),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 231,
              height: 231,
              padding: const EdgeInsets.all(11),
              decoration: const BoxDecoration(
                color: Color(0xFFF4F4F4),
              ),
              child: QrImageView(
                data: 'This is a simple QR code',
                version: QrVersions.auto,
                size: 220,
                gapless: false,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 53),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recompensa ',
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '100 pts',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 53),
              child: SizedBox(
                width: 253,
                height: 10,
                child: SliderTheme(
                  data: SliderThemeData(
                      inactiveTrackColor: Color(0xFFEFECF3),
                      activeTrackColor: Color(0xFFFF552B),
                      //thumbShape: ,
                      thumbColor: Color(0xFFFF552B)),
                  child: Slider(
                      value: value,
                      min: 0,
                      max: 2000,
                      label: value.toString(),
                      onChanged: (double val) {
                        setState(() {
                          value = val;
                        });
                      }),
                ),
                /*Stack(
                  children: [
                    Positioned(
                      left: 13.41,
                      top: 0,
                      child: Container(
                        width: 240,
                        height: 10,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEFECF3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 27.27,
                        height: 10,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFF552B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),*/
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 63.5, right: 53),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '2,000 pts',
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 196,
              child: Text(
                'Reserva en +mesa para ganar más recompensas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF552B),
                  fontSize: 14,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margins),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.asset(
                      imagesList.imageList[0],
                      height: 156,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        restaurantsList.restaurantsList[0],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFF1E1B2C),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        nextStatusSvg.nextStatusSvg[1],
                        color: Color(nextStatusColor.nextStatusColor[1]),
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        nextStatusTitle.nextStatusTitle[1],
                        style: TextStyle(
                          color: Color(nextStatusColor.nextStatusColor[1]),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/calendar.svg",
                        height: 22,
                        width: 23,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Jul, 27, 2023',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 15),
                      SvgPicture.asset(
                        "assets/icons/clock.svg",
                        height: 23,
                        width: 23,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        ' 20:00',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 15),
                      SvgPicture.asset(
                        "assets/icons/location.svg",
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text(
                        'Cancún',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    //height: 10,
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/avatar.svg",
                        height: 22,
                        width: 22,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '6 - Asientos al aire libre',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Tu calificación',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: const Color(0xFFFDBC31),
                            height: 20,
                            width: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: const Color(0xFFFDBC31),
                            height: 20,
                            width: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: const Color(0xFFFDBC31),
                            height: 20,
                            width: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: const Color(0xFFFDBC31),
                            height: 20,
                            width: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: const Color(0xFFFDBC31),
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Modificar',
                        style: TextStyle(
                          color: Color(0xFFFD5631),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '-',
                        style: TextStyle(
                          color: Color(0xFFFD5631),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Cancelar',
                        style: TextStyle(
                          color: Color(0xFFFD5631),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '-',
                        style: TextStyle(
                          color: Color(0xFFFD5631),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Agregar al calendario',
                        style: TextStyle(
                          color: Color(0xFFFD5631),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFD6D6D6),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .9,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 5,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: SvgPicture.asset(
                                  "assets/icons/cafe.svg",
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Ver\nmenú',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1E1B2C),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 5,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: SvgPicture.asset(
                                  "assets/icons/pin.svg",
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Obtener\ndirecciones',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1E1B2C),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 5,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: SvgPicture.asset(
                                  "assets/icons/message.svg",
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Enviar\nmensaje',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1E1B2C),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '¿Quien va?',
                        style: TextStyle(
                          color: Color(0xFF1E1B2C),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 54,
                                  height: 54,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFBB6ACD),
                                    shape: OvalBorder(),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'C',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Yo\n',
                                        style: TextStyle(
                                          color: Color(0xFF443F56),
                                          fontSize: 12,
                                          fontFamily: 'Noto Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Host',
                                        style: TextStyle(
                                          color: Color(0xFF443F56),
                                          fontSize: 12,
                                          fontFamily: 'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 29,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 54,
                                  height: 54,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFEFECF3),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  width: 41.70,
                                  height: 15,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFEFECF3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  width: 70.90,
                                  height: 15,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFEFECF3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 25.5, right: 23.4),
                        width: 224,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 5,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/user.svg",
                              color: const Color(0xFF454056),
                              height: 20,
                              width: 20,
                            ),
                            const Text(
                              'Invita a tus amigos',
                              style: TextStyle(
                                color: Color(0xFF443F56),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 49),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Detalles',
                        style: TextStyle(
                          color: Color(0xFF1E1B2C),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '¿Qué saber antes de llegar?',
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 16,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ]),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Tenemos un período de gracia de 10 minutos.\npor favor llámenos si está corriendo más de\nminutos después de su hora de reserva.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '¿Cual es la ocación? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .9,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 5,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 14, right: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Selecciona la ocación (opcional)',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down,
                                  size: 21, color: Color(0xFF454056)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '¿Tiene algún pedido especial?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .9,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 5,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 14, right: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Agregue algún pedido especial (opcional)',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down,
                                  size: 21, color: Color(0xFF454056)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Gestiona tu reservación desde nuestra app',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  IntlPhoneField(
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
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Se pueden aplicar tarifas estándar de mensajes y datos',
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 116,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFF552B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 5,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Enviar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 29),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Image.asset("assets/google-play.jpg"),
                    Image.asset("assets/app-store.png"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margins),
              child: Container(
                child: Image.asset("map.jpg"),
              ),
            ),
            const SizedBox(height: 19),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margins),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Harry's Cancun Prime Ste...",
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
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margins),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Km. 14.2, Kukulkan 1, Zona Hotelera, 77500\nCancún, Q.R',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margins),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '998 840 6554',
                    style: TextStyle(
                      color: Color(0xFFFF552B),
                      fontSize: 16,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margins),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Ver horarios, transporte y otros detalles',
                    style: TextStyle(
                      color: Color(0xFFFF552B),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 42),
          ],
        ),
      ),
    );
  }
}
