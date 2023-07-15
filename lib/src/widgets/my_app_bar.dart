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
  Size get preferredSize => const Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      flexibleSpace: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10, bottom: 5),
            height: 60,
            color: Colors.blueGrey,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "assets/icons/world.svg",
                  height: 16,
                  width: 16,
                  // ignore: deprecated_member_use
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                Text(
                  "Esp",
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 5),
                SvgPicture.asset(
                  "assets/icons/currency.svg",
                  height: 15,
                  width: 15,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                Text(
                  "USD",
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  child: SvgPicture.asset(
                      isDarkMode
                          ? "assets/icons/check.svg"
                          : "assets/icons/night.svg",
                      color: isDarkMode ? Colors.white : Colors.black),
                  onTap: () {
                    onDarkModeChanged(!isDarkMode);
                  },
                )
              ],
            ),
          ),
          Container(
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
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/Logo.png",
                    width: 124,
                    height: 31,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.only(left: 18.67, right: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black26),
                  ),
                  width: 141.23,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      const VerticalDivider(
                        indent: 4,
                        endIndent: 4,
                        color: Colors.black38,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              openDialog(context);
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(
                                Icons.person_3_sharp,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void openDialog(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 100),
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: const LoginModal(),
          ),
        ),
      );
}
