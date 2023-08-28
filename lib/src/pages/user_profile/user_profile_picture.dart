// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProfilePicture extends StatelessWidget {
  const UserProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Stack(
        children: [
          SizedBox(
            height: 190,
            width: double.infinity,
            child: Image.asset(
              "assets/userProfilebg.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 55,
            left: 25,
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/Profile_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 105,
            left: 70,
            child: Container(
              height: 32,
              width: 32,
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x141F1B2D),
                      blurRadius: 12,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x141F1B2D),
                      blurRadius: 2,
                      offset: Offset(0, 2),
                      spreadRadius: -2,
                    ),
                  ]),
              child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  color: Colors.black,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/edit.svg",
                    color: Color(0xFF454056),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 75,
            left: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "¡Bienvenid@!",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "User Name",
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
