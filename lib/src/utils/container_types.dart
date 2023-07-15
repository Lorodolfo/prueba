import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerTypes extends StatelessWidget {
  final double ancho;
  final String icon;
  final Color iconColor;
  final String text;
  final TextStyle? textStyle;
  final Color containerColor;
  final double alturaIcon;
  final double anchoIcon;

  const ContainerTypes({
    super.key,
    required this.ancho,
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.alturaIcon,
    required this.anchoIcon,
    this.textStyle,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      width: ancho,
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              padding: const EdgeInsets.all(7),
              width: 42,
              height: 42,
              decoration:
                  BoxDecoration(color: containerColor, shape: BoxShape.circle),
              child: SvgPicture.asset(
                icon,
                color: iconColor,
                height: alturaIcon,
                width: anchoIcon,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Text(
              text,
              style: const TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
