import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class NotificationsCard extends StatefulWidget {
  final String titulo;
  final int bgColorTitulo;
  final String leftIcon;
  const NotificationsCard(
      {super.key,
      required this.titulo,
      required this.bgColorTitulo,
      required this.leftIcon});

  @override
  State<NotificationsCard> createState() => _NotificationsCardState();
}

class _NotificationsCardState extends State<NotificationsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.only(left: 0.0, top: 7, right: 5.0),
        height: 165,
        width: 324,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          /* shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 15,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],*/
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: AlignmentDirectional.centerStart, // Añadido
                  children: [
                    Container(
                      height: 29,
                      decoration: BoxDecoration(
                        color: Color(widget.bgColorTitulo),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      alignment: Alignment.centerLeft, // Añadido
                      padding:
                          const EdgeInsets.only(left: 40, top: 7, right: 15),
                      child: Text(
                        widget.titulo,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: -8.0,
                      top: -5.0,
                      child: Image.asset(
                        widget.leftIcon,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    SvgPicture.asset("icons/bell.svg",
                        height: 25, width: 23.92),
                    Positioned(
                      right: 0.0,
                      top: 2.0,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFF552B),
                        ),
                        height: 11,
                        width: 11,
                        child: const Text(
                          '25',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: 300,
                child: Text(
                  'Quisque nec turpis at urna dictum luctus. Suspendisse convallis dignissim  eros at volutpat. In egestas mattis dui. Aliquam mattis dictum  liquet.  Nulla sapien mauris, eleifend et sem ac, commodo dapibus odio.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF878A99),
                    fontSize: 14,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
