import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';

class ConfirmatedBooking extends StatefulWidget {
  const ConfirmatedBooking({super.key});

  @override
  State<ConfirmatedBooking> createState() => _ConfirmatedBookingState();
}

class _ConfirmatedBookingState extends State<ConfirmatedBooking> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          isDarkMode: isDarkMode,
          onDarkModeChanged: (value) {
            setState(
              () {
                isDarkMode = value;
              },
            );
          },
        ),
        body: Column(
          children: [
            SizedBox(
              height: 103,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/filled_checkbook.svg",
                  height: 30,
                  width: 30,
                  color: Color(0xFF07C98B),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Tu reserva esta confirmada',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF666276),
                    fontSize: 20,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Recibirás un correo de confirmación.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF666276),
                fontSize: 16,
                fontFamily: 'Noto Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 286,
              child: Text(
                ' Tus 100 +mesa puntos serán acreditados en tu cuenta.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF552B),
                  fontSize: 16,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .72,
                height: 63,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2.0,
                      color: Color(0xFF0FE576),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/calendar.svg",
                        height: 30,
                        width: 30,
                        color: Color(0xFF07C98B),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Ir a mi reservación',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF07C98B),
                          fontSize: 16,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
