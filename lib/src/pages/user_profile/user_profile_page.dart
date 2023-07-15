import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/user_profile/bottom_nav.dart';
import 'package:prueba2/src/pages/user_profile/routes.dart';
import 'package:prueba2/src/pages/user_profile/user_profile_picture.dart';

import 'package:prueba2/src/widgets/my_app_bar.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  bool isDarkMode = false;
  int index = 0;
  BottomNav? myBNB;
  String generateHeroTag(String baseTag, int index) {
    return '$baseTag$index';
  }

  @override
  void initState() {
    myBNB = BottomNav(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        isDarkMode: isDarkMode,
        onDarkModeChanged: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
      bottomNavigationBar: myBNB,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 1),
        child: Column(
          children: [
            const UserProfilePicture(),
            Routes(index: index),
          ],
        ),
      ),
    );
  }
}
