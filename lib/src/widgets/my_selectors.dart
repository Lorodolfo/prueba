// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/Bookings/booking.dart';
import 'package:prueba2/src/pages/Bookings/confirmated_booking.dart';
import 'package:prueba2/src/pages/Bookings/postpaid/postpaid_booking.dart';
import 'package:prueba2/src/pages/Bookings/prepaid/prepaid_booking.dart';
import 'package:prueba2/src/pages/Bookings/traditional/traditional_booking.dart';

class MySelectors extends StatelessWidget {
  const MySelectors({super.key});

  @override
  Widget build(BuildContext context) {
    final double margen_1 = MediaQuery.of(context).size.width * 0.05;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(left: margen_1),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.43,
                height: 45,
                //padding: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 3, top: 3, bottom: 3),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 59, 16, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/restaurant.svg",
                          height: 24,
                          width: 24,
                          color: const Color(0xFFFF2F01),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width <= 380
                          ? 5
                          : MediaQuery.of(context).size.width <= 393
                              ? 14
                              : MediaQuery.of(context).size.width <= 499
                                  ? 22
                                  : 44,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: Text(
                        "Restaurantes",
                        style: TextStyle(
                          color: Color(0xFF1E1B2C),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: margen_1),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.43,
                height: 45,
                //padding: const EdgeInsets.only(right: 10,),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 3, top: 3, bottom: 3),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(60, 118, 242, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/drinks.svg",
                          height: 24,
                          width: 24,
                          color: Color(0xFF3C76F2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width <= 380
                          ? 5
                          : MediaQuery.of(context).size.width <= 393
                              ? 14
                              : MediaQuery.of(context).size.width <= 499
                                  ? 22
                                  : 44,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PrepaidBooking(),
                            ),
                          );
                        },
                        child: Text(
                          "Comer y beber",
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(left: margen_1),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.43,
                height: 45,
                //padding: const EdgeInsets.only(right: 10,),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 3, top: 3, bottom: 3),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(93, 60, 242, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/nightlife.svg",
                          height: 24,
                          width: 24,
                          color: const Color(0xFF5D3CF2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width <= 380
                          ? 5
                          : MediaQuery.of(context).size.width <= 393
                              ? 14
                              : MediaQuery.of(context).size.width <= 499
                                  ? 22
                                  : 44,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PostpaidBooking(),
                            ),
                          );
                        },
                        child: Text(
                          "Vida Nocturna",
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: margen_1),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.43,
                height: 45,
                //padding: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 3, top: 3, bottom: 3),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(7, 201, 139, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/beach.svg",
                          height: 24,
                          width: 24,
                          color: Color(0xFF07C98B),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width <= 380
                          ? 5
                          : MediaQuery.of(context).size.width <= 393
                              ? 14
                              : MediaQuery.of(context).size.width <= 499
                                  ? 22
                                  : 44,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TraditionalBooking(),
                            ),
                          );
                        },
                        child: Text(
                          "Club de playa",
                          style: TextStyle(
                              color: Color(0xFF1E1B2C),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            //padding: const EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width * 0.33,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 3, bottom: 3),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFEEBED),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/tickets.svg",
                      height: 24,
                      width: 24,
                      color: const Color(0xFFF23C49),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width <= 380
                      ? 5
                      : MediaQuery.of(context).size.width <= 393
                          ? 14
                          : MediaQuery.of(context).size.width <= 499
                              ? 22
                              : 44,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Booking(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: Text(
                      "Eventos",
                      style: TextStyle(
                          color: Color(0xFF1E1B2C),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
