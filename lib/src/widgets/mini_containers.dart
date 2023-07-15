import 'package:flutter/material.dart';

class MiniContainers extends StatelessWidget {
  const MiniContainers({super.key});

  @override
  Widget build(BuildContext context) {
    const double ancho = 56.64;
    const double alto = 31.95;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          Container(
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50, color: Color(0xFFFF552B)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(10),
                ),
              ),
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white, Color(0xFFFF552B)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.5, 0.5],
              ),
            ),
            height: alto,
            width: ancho,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "05:30",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF443F56),
                    fontSize: 12,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "10%",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
