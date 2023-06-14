import 'package:flutter/material.dart';

class ContainerTypes extends StatelessWidget {
  final double ancho;
  final IconData icon;
  final Color iconColor;
  final String text;
  final TextStyle? textStyle;

  const ContainerTypes({
    super.key,
    required this.ancho,
    required this.icon,
    required this.iconColor,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      width: ancho,
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(icon, color: iconColor),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              text,
            ),
          ),
        ],
      ),
    );
  }
}
