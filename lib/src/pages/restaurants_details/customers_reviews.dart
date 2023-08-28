// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomersReviews extends StatefulWidget {
  final String customer_name;
  final String date;
  final String image;
  final String location;
  final double food;
  final double service;
  final double ambience;
  final double overall;
  final String reviews_number;
  final String reviews_title;
  final String restaurant_name;
  final int review_likes;
  final String review_date;
  final String restaurant_answer;
  final int likes;
  final String review;

  const CustomersReviews(
      {super.key,
      required this.ambience,
      required this.customer_name,
      required this.date,
      required this.image,
      required this.location,
      required this.food,
      required this.service,
      required this.overall,
      required this.review,
      required this.reviews_number,
      required this.reviews_title,
      required this.restaurant_name,
      required this.review_likes,
      required this.review_date,
      required this.restaurant_answer,
      required this.likes});

  @override
  State<CustomersReviews> createState() => _CustomersReviewsState();
}

class _CustomersReviewsState extends State<CustomersReviews> {
  @override
  Widget build(BuildContext context) {
    final double margins = MediaQuery.of(context).size.width * 0.05;
    return Container(
      padding: EdgeInsets.only(left: margins, right: margins, top: 28),
      color: Color(0xFFF8F8F8),
      height: 442,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 112,
                width: 99,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 54,
                      height: 54,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.customer_name,
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 12,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.location,
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 12,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/bookmark.svg",
                          height: 16,
                          width: 16,
                          color: Color(0xFF5C586B),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Row(
                          children: [
                            Text(widget.reviews_number),
                            Text(" Reseñas"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/star.svg",
                        color: Color(0xFFFF552B),
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset(
                        "assets/icons/star.svg",
                        color: Color(0xFFFF552B),
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset(
                        "assets/icons/star.svg",
                        color: Color(0xFFFF552B),
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset(
                        "assets/icons/star.svg",
                        color: Color(0xFFFF552B),
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset(
                        "assets/icons/star.svg",
                        color: Color(0xFFFF552B),
                        width: 16,
                        height: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Comieron el ${widget.date}",
                    style: TextStyle(
                      color: Color(0xFF666276),
                      fontSize: 12,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.57,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFEFECF3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Food: ',
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.food.toString(),
                        style: TextStyle(
                          color: Color(0xFFFF552B),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Text(
                        'Service: ',
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.service.toString(),
                        style: TextStyle(
                          color: Color(0xFFFF552B),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      Text(
                        'Ambiance: ',
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.ambience.toString(),
                        style: TextStyle(
                          color: Color(0xFFFF552B),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Overall: ',
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.overall.toString(),
                        style: TextStyle(
                          color: Color(0xFFFF552B),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFEFECF3),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 2,
              ),
              SvgPicture.asset(
                "assets/icons/verticalFilter.svg",
                width: 16,
                height: 16,
                color: Color(0xFF5C586B),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                "Ruido - Moderado",
                style: TextStyle(
                  color: Color(0xFF666276),
                  fontSize: 14,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.review,
                style: TextStyle(
                  color: Color(0xFF443F56),
                  fontSize: 14,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.clip,
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '¿Te sirvió esta opinión?',
                style: TextStyle(
                  color: Color(0xFF9691A4),
                  fontSize: 14,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 19,
              ),
              SvgPicture.asset(
                "assets/icons/like.svg",
                height: 24,
                width: 24,
                color: Color(0xFF9691A4),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                '(${widget.review_likes})',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF9691A4),
                  fontSize: 14,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  decoration: ShapeDecoration(
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
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.restaurant_name,
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.review_date,
                      style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 12,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.restaurant_answer,
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/like.svg",
                          height: 24,
                          width: 24,
                          color: Color(0xFF9691A4),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          '(${widget.review_likes})',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF9691A4),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
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
