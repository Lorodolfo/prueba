// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/images.dart';

class MyReviews extends StatefulWidget {
  const MyReviews({super.key});

  @override
  State<MyReviews> createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: const Text(
                  "Tus reseñas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Noto Sans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                child: Container(
                  height: 31,
                  width: 112,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFF443F56),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Recientes',
                        style: TextStyle(
                          color: Color(0xFF5C586B),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                          //height: 21,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFF5C586B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            indent: 14.0,
            endIndent: 14.0,
            color: Colors.grey,
            thickness: 1.0,
          ),
          Container(
            padding: const EdgeInsets.only(top: 5, left: 14, right: 14),
            child: ListView.builder(
              itemCount: imagesList.imageList.length,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 75,
                          height: 150,
                          child: Container(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 54,
                                      width: 54,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: ClipOval(
                                        child: Image.asset(
                                          imagesList.imageList[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      restaurantsList.restaurantsList[index]
                                          .replaceAll(' ', '\n'),
                                      style: const TextStyle(
                                        color: Color(0xFF443F56),
                                        fontSize: 12,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "Cancun",
                                      style: TextStyle(
                                        color: Color(0xFF443F56),
                                        fontSize: 12,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/bookmark.svg",
                                          color: const Color(0xFF5C586B),
                                        ),
                                        const Text(
                                          '2 reseñas',
                                          style: TextStyle(
                                            color: Color(0xFF666276),
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 235,
                          height: 88,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color: const Color(0xFFFF552B),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color: const Color(0xFFFF552B),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color: const Color(0xFFFF552B),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color: const Color(0xFFFF552B),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color: const Color(0xFFFF552B),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Lo visitaste el 15 de Noviembre de 2022',
                                style: TextStyle(
                                  color: Color(0xFF666276),
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Container(
                                width: 212,
                                height: 36,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Comida',
                                                  style: TextStyle(
                                                    color: Color(0xFF666276),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' 5',
                                                  style: TextStyle(
                                                    color: Color(0xFFFF552B),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 15),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Servicio ',
                                                  style: TextStyle(
                                                    color: Color(0xFF666276),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '5',
                                                  style: TextStyle(
                                                    color: Color(0xFFFF552B),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 15),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Ambiente ',
                                                  style: TextStyle(
                                                    color: Color(0xFF666276),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '5',
                                                  style: TextStyle(
                                                    color: Color(0xFFFF552B),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'General ',
                                                  style: TextStyle(
                                                    color: Color(0xFF666276),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '5',
                                                  style: TextStyle(
                                                    color: Color(0xFFFF552B),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 5,
                      endIndent: 5,
                      thickness: 1,
                      color: Colors.black38,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/VerticalFilter.svg",
                            color: const Color(0xFF5C586B),
                          ),
                          const SizedBox(width: 4),
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ruido - ',
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Moderado',
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 12,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      //mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 314,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'La atención, la comida y el lugar, impecable, 100% agradecido por el trato y la atención.\n',
                                  style: TextStyle(
                                    color: Color(0xFF443F56),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '+ Leer más...',
                                  style: TextStyle(
                                    color: Color(0xFFFF552B),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 24,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/like.svg",
                            color: const Color(0xFF9691A4),
                            height: 18,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            '(3)',
                            style: TextStyle(
                              color: Color(0xFF9691A4),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const VerticalDivider(
                            thickness: 2.0,
                            color: Color(0xFFEFECF3),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Editar',
                            style: TextStyle(
                              color: Color(0xFFFF552B),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const VerticalDivider(
                            thickness: 1,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Eliminar',
                            style: TextStyle(
                              color: Color(0xFFFF552B),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF959595),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 306,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Harrys Cancun Prime Steak',
                                      style: TextStyle(
                                        color: Color(0xFF443F56),
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '-',
                                      style: TextStyle(
                                        color: Color(0xFF443F56),
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/like.svg",
                                    color: const Color(0xFF9691A4),
                                    height: 18,
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    '(0) | Reportar',
                                    style: TextStyle(
                                      color: Color(0xFF9691A4),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
