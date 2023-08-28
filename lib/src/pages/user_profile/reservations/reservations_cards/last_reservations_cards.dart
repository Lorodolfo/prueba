// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'package:prueba2/src/pages/images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LastReservationsCards extends StatefulWidget {
  final int lastStatusColor;
  final String lastStatusTitle;
  final String lastStatusSvg;
  final String name;
  final String image;
  final int i;
  const LastReservationsCards(
      {super.key,
      required this.lastStatusColor,
      required this.lastStatusTitle,
      required this.lastStatusSvg,
      required this.name,
      required this.image,
      required this.i});

  @override
  State<LastReservationsCards> createState() => _LastReservationsCardsState();
}

class _LastReservationsCardsState extends State<LastReservationsCards> {
  @override
  Widget build(BuildContext context) {
    final double margins = MediaQuery.of(context).size.width * 0.05;
    return Padding(
      padding: EdgeInsets.only(bottom: 20, left: margins, right: margins),
      child: Container(
        height: 378,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 15,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 156,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          widget.image,
                          height: 156,
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              widget.name,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color(0xFF1E1B2C),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9.5),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            widget.lastStatusSvg,
                            color: Color(widget.lastStatusColor),
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            widget.lastStatusTitle,
                            style: TextStyle(
                              color: Color(widget.lastStatusColor),
                              fontSize: 16,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 9.5,
                      ),
                      child: Row(
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
                    ),
                    const SizedBox(
                      //height: 10,
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9.5),
                      child: Row(
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
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 9.5),
                      child: const Row(
                        children: [
                          Text(
                            'Tu calificación',
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
                    Container(
                      height: 41,
                      margin: const EdgeInsets.only(left: 9.5, right: 14),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                          Positioned(
                            bottom: 0.0,
                            right: 8.0,
                            child: Container(
                              width: 124.13,
                              height: 33,
                              padding: const EdgeInsets.only(
                                  top: 6, left: 12, right: 12, bottom: 6),
                              decoration: ShapeDecoration(
                                color: Colors.white,
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
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset("assets/icons/arrow.svg"),
                                  const Text(
                                    'Ver detalles',
                                    style: TextStyle(
                                      color: Color(0xFFFF552B),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 7.77,
                  right: 8.45,
                  child: FloatingActionButton(
                    heroTag: "likeMylastReservations_${widget.i}",
                    elevation: 3,
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    mini: true,
                    child: SvgPicture.asset("assets/icons/wishlist.svg"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }
}
