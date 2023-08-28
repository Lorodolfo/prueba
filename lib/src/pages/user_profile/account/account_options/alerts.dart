import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/user_profile/bottom_nav.dart';
import 'package:prueba2/src/pages/user_profile/user_profile_picture.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Alerts extends StatefulWidget {
  const Alerts({super.key});

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  bool isDarkMode = false;
  int index = 0;
  BottomNav? myBNB;
  bool status1 = true;
  bool status2 = true;
  bool status3 = true;
  bool status4 = true;
  bool status5 = true;
  bool status6 = true;
  bool status7 = true;

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
            //Routes(index: index),
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
              //height: 844.75,
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
                    height: 31,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      children: [
                        FlutterSwitch(
                            width: 34,
                            height: 20,
                            activeColor: const Color(0xFF07C98B),
                            inactiveColor: const Color(0xFFBBB7C5),
                            toggleColor: Colors.white,
                            toggleSize: 14,
                            value: status1,
                            onToggle: (val1) {
                              setState(() {
                                status1 = val1;
                              });
                            }),
                        const SizedBox(
                          width: 16,
                        ),
                        const SizedBox(
                          width: 267,
                          child: Text(
                            'Activar/desactivar todas las notificaciones',
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 16,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlutterSwitch(
                            width: 34,
                            height: 20,
                            activeColor: const Color(0xFF07C98B),
                            inactiveColor: const Color(0xFFBBB7C5),
                            toggleColor: Colors.white,
                            toggleSize: 14,
                            value: status2,
                            onToggle: (val2) {
                              setState(() {
                                status2 = val2;
                              });
                            }),
                        const SizedBox(
                          width: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Notificación de nuevas\nreservaciones',
                              style: TextStyle(
                                color: Color(0xFF443F56),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Notifícame si tengo nuevas\nreservaciones o existen cambios en ellas',
                              style: TextStyle(
                                color: Color(0xFF666276),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlutterSwitch(
                            width: 34,
                            height: 20,
                            activeColor: const Color(0xFF07C98B),
                            inactiveColor: const Color(0xFFBBB7C5),
                            toggleColor: Colors.white,
                            toggleSize: 14,
                            value: status3,
                            onToggle: (val3) {
                              setState(() {
                                status3 = val3;
                              });
                            }),
                        const SizedBox(
                          width: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bandeja de entrada',
                              style: TextStyle(
                                color: Color(0xFF443F56),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Notificame si tengo mensajes nuevos en\nmis reservaciones',
                              style: TextStyle(
                                color: Color(0xFF666276),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlutterSwitch(
                            width: 34,
                            height: 20,
                            activeColor: const Color(0xFF07C98B),
                            inactiveColor: const Color(0xFFBBB7C5),
                            toggleColor: Colors.white,
                            toggleSize: 14,
                            value: status4,
                            onToggle: (val4) {
                              setState(() {
                                status4 = val4;
                              });
                            }),
                        const SizedBox(
                          width: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recordatorios',
                              style: TextStyle(
                                color: Color(0xFF443F56),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Notificame recordatorios y alertas\ngenerales del sistema',
                              style: TextStyle(
                                color: Color(0xFF666276),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlutterSwitch(
                            width: 34,
                            height: 20,
                            activeColor: const Color(0xFF07C98B),
                            inactiveColor: const Color(0xFFBBB7C5),
                            toggleColor: Colors.white,
                            toggleSize: 14,
                            value: status5,
                            onToggle: (val5) {
                              setState(() {
                                status5 = val5;
                              });
                            }),
                        const SizedBox(
                          width: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Notificación de Reseñas',
                              style: TextStyle(
                                color: Color(0xFF443F56),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Notificame cuando haya nuevos\ncomentarios sin leer',
                              style: TextStyle(
                                color: Color(0xFF666276),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlutterSwitch(
                            width: 34,
                            height: 20,
                            activeColor: const Color(0xFF07C98B),
                            inactiveColor: const Color(0xFFBBB7C5),
                            toggleColor: Colors.white,
                            toggleSize: 14,
                            value: status6,
                            onToggle: (val6) {
                              setState(() {
                                status6 = val6;
                              });
                            }),
                        const SizedBox(
                          width: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Notificarme de nuevas\naperturas y promociones',
                              style: TextStyle(
                                color: Color(0xFF443F56),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Envía alertas sobre proximas\ninauguraciones, lugares tendencia\ny HotSpots',
                              style: TextStyle(
                                color: Color(0xFF666276),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: margins),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlutterSwitch(
                            width: 34,
                            height: 20,
                            activeColor: const Color(0xFF07C98B),
                            inactiveColor: const Color(0xFFBBB7C5),
                            toggleColor: Colors.white,
                            toggleSize: 14,
                            value: status7,
                            onToggle: (val7) {
                              setState(() {
                                status7 = val7;
                              });
                            }),
                        const SizedBox(
                          width: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Boletines semanales',
                              style: TextStyle(
                                color: Color(0xFF443F56),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Enviame boletines semanales con\ninformación de interés',
                              style: TextStyle(
                                color: Color(0xFF666276),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 58,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 119.18,
                      height: 40,
                      padding:
                          const EdgeInsets.only(top: 8, left: 12, bottom: 8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFF552B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x141F1B2D),
                            blurRadius: 12,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x141F1B2D),
                            blurRadius: 2,
                            offset: Offset(0, 2),
                            spreadRadius: -2,
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_sharp,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Guardar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 76,
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
