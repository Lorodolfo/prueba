// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:prueba2/src/widgets/login_modal.dart';
import 'package:prueba2/src/pages/my_home_page.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;

  const AppBarWidget({
    Key? key,
    required this.isDarkMode,
    required this.onDarkModeChanged,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          padding: const EdgeInsets.only(left: 15, right: 17.7),
          height: 80,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          //const UserProfilePage(),
                          const MyHomePage(),
                    ),
                  );
                },
                child: Image.asset(
                  "assets/Logo.png",
                  width: 111,
                  height: 31,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5, left: 16, right: 12, bottom: 5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 5,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                width: 122.23,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 35,
                    ),
                    const VerticalDivider(
                      indent: 7,
                      endIndent: 7,
                      color: Color(0xFFD5D2DC),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            openDialog(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(9),
                            height: 42,
                            width: 42,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF6F6F7),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/avatar.svg",
                              color: const Color(0xFFFF552B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openDialog(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 36),
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: const LoginModal(),
          ),
        ),
      );
}
