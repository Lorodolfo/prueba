// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1F1B2D),
      width: MediaQuery.of(context).size.width,
      height: 591,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 131,
            child: Stack(
              children: [
                Positioned(
                  top: 56,
                  left: 20,
                  child: Image.asset(
                    "assets/masmesalogo.png",
                    height: 56,
                    width: 116,
                  ),
                ),
                Positioned(
                  top: 43,
                  left: 194,
                  child: Row(children: [
                    SvgPicture.asset("assets/icons/mail.svg"),
                    const SizedBox(width: 4),
                    const Text(
                      'info@info.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
                ),
                Positioned(
                  top: 75,
                  left: 194,
                  child: Row(children: [
                    SvgPicture.asset("assets/icons/phone.svg"),
                    const SizedBox(width: 4),
                    const Text(
                      '(55) 5555-0120',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enlaces rápidos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Ciudades tendencia',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Top 10 restaurantes',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Nuevos en masmesa',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Próximos eventos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 43),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Perfil',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Mi cuenta',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Favoritos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Reservaciones',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Platillos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 320,
              child: Text(
                'Suscríbete a nuestro boletín',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 321,
              child: Opacity(
                opacity: 0.70,
                child: Text(
                  'Inauguraciones, noticias, interés, sabores y más.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: 320,
              height: 40,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.03999999910593033),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    color: Colors.white.withOpacity(0.11999999731779099),
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15.5),
                  SvgPicture.asset("assets/icons/mail.svg",
                      color: Colors.white),
                  const SizedBox(width: 8.0),
                  const Text(
                    'Tu email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 18),
            child: Container(
              width: 111,
              height: 36,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFFF552F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Subscribir',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 52,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Opacity(
                              opacity: 0.04,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 9,
                            top: 9,
                            child: Container(
                                width: 14,
                                height: 14,
                                decoration: const BoxDecoration(),
                                child: SvgPicture.asset(
                                    "assets/icons/circlefb.svg")),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Opacity(
                              opacity: 0.04,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 9,
                            top: 9,
                            child: Container(
                              width: 14,
                              height: 14,
                              decoration: const BoxDecoration(),
                              child:
                                  SvgPicture.asset("assets/icons/circletw.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Opacity(
                              opacity: 0.04,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 9,
                            top: 9,
                            child: Container(
                              width: 14,
                              height: 14,
                              decoration: const BoxDecoration(),
                              child: SvgPicture.asset(
                                  "assets/icons/circletlg.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 32,
                      height: 32,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: const ShapeDecoration(
                                color: Colors.white,
                                shape: OvalBorder(),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x281F1B2D),
                                    blurRadius: 16,
                                    offset: Offset(0, 8),
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Color(0x331F1B2D),
                                    blurRadius: 12,
                                    offset: Offset(0, 4),
                                    spreadRadius: -6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 9,
                            top: 9,
                            child: Container(
                                width: 14,
                                height: 14,
                                decoration: const BoxDecoration(),
                                child: SvgPicture.asset(
                                    "assets/icons/circlemsg.svg")),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/world.svg"),
                    const SizedBox(
                      width: 4,
                    ),
                    const Opacity(
                      opacity: 0.70,
                      child: Text(
                        'Esp',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Opacity(
                      opacity: 0.70,
                      child:
                          Icon(Icons.keyboard_arrow_down, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
