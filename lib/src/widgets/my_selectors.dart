import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 59, 16, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/restaurant.svg",
                          height: 13,
                          width: 13,
                          color: const Color(0xFFFF2F01),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        "Restaurantes",
                        style: TextStyle(
                          color: Color(0xFF1E1B2C),
                          fontSize: 13,
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
                padding: const EdgeInsets.only(
                  right: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(60, 118, 242, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/drinks.svg",
                          height: 13,
                          width: 13,
                          color: Color(0xFF3C76F2),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        "Comer y beber",
                        style: TextStyle(
                          color: Color(0xFF1E1B2C),
                          fontSize: 13,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
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
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(93, 60, 242, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/nightlife.svg",
                          height: 13,
                          width: 13,
                          color: const Color(0xFF5D3CF2),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        "Vida Nocturna",
                        style: TextStyle(
                          color: Color(0xFF1E1B2C),
                          fontSize: 13,
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
                padding: const EdgeInsets.only(right: 15, left: 1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(7, 201, 139, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/beach.svg",
                          height: 13,
                          width: 13,
                          color: Color(0xFF07C98B),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        "Club de playa",
                        style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 13,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700),
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
            width: MediaQuery.of(context).size.width * 0.275,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 1),
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(7, 201, 139, 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/tickets.svg",
                      height: 13,
                      width: 13,
                      color: const Color(0xFFF23C49),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "Eventos",
                    style: TextStyle(
                        color: Color(0xFF1E1B2C),
                        fontSize: 13,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700),
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
