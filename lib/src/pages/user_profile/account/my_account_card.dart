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
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20.0),
        height: 165,
        width: 324,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
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
      ),
    );
  }
}
