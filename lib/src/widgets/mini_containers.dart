import 'package:flutter/material.dart';

class MiniContainers extends StatelessWidget {
  final String hora;
  final String porcentaje;
  const MiniContainers(
      {super.key, required this.hora, required this.porcentaje});

  @override
  Widget build(BuildContext context) {
    const double ancho = 56;

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: ancho,
            height: 19.81,
            padding: const EdgeInsets.symmetric(vertical: 3),
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50, color: Color(0xFFFF552B)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  hora,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF443F56),
                    fontSize: 10,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: ancho,
            height: 15.18,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
            decoration: const ShapeDecoration(
              color: Color(0xFFFF552B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  porcentaje,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
