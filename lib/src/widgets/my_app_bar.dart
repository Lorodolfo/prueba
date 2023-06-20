import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  "assets/icons/money.svg",
                  height: 16,
                  width: 16,
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
                IconButton(
                  icon: isDarkMode
                      ? const Icon(Icons.wb_sunny)
                      : const Icon(Icons.nights_stay),
                  color: isDarkMode ? Colors.white : Colors.black,
                  onPressed: () {
                    onDarkModeChanged(!isDarkMode);
                  },
                ),
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
                Image.asset(
                  "assets/Logo.png",
                  width: 124,
                  height: 31,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.only(left: 18.67, right: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.deepOrange),
                  ),
                  width: 141.23,
                  height: 50,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      VerticalDivider(
                        indent: 4,
                        endIndent: 4,
                        color: Colors.black38,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.person_3_sharp,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Icon(
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
}
