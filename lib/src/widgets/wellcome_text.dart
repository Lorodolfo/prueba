import 'package:flutter/material.dart';

class WellcomeText extends StatelessWidget {
  const WellcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Una ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Noto Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: 'mesa',
            style: TextStyle(
              color: Color(0xFFFF552B),
              fontSize: 30,
              fontFamily: 'Noto Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: ' para ti\nen cada lugar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Noto Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
