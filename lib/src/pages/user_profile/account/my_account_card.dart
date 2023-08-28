// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAccountCard extends StatefulWidget {
  final String titulo;
  final String icono;
  final String data;
  const MyAccountCard(
      {super.key,
      required this.titulo,
      required this.icono,
      required this.data});

  @override
  State<MyAccountCard> createState() => _MyAccountCardState();
}

class _MyAccountCardState extends State<MyAccountCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20.0),
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
      height: 176,
      width: 324,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: SvgPicture.asset(
              widget.icono,
              color: const Color(0xFFFF552B),
              height: 36,
              width: 36,
            ),
          ),
          Text(widget.titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF443F56),
                fontSize: 14,
                fontFamily: 'Noto Sans',
                fontWeight: FontWeight.w700,
              )),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.data,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color(0xFF443F56),
                fontSize: 14,
                fontFamily: 'Noto Sans',
                fontWeight: FontWeight.w400,
                height: 1.3),
          )
        ],
      ),
    );
  }
}
