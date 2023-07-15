import 'package:flutter/material.dart';

import 'package:prueba2/src/pages/user_profile/notifications/notifications_card.dart';
import 'package:prueba2/src/utils/notifications_lists.dart';

class MyNotifications extends StatefulWidget {
  const MyNotifications({super.key});

  @override
  State<MyNotifications> createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> {
  SvgList svgList = SvgList();
  NotificationsList notificationsList = NotificationsList();
  TitleColorList titleColorList = TitleColorList();
  IconColorList iconColorList = IconColorList();
  LeftIcons leftIcons = LeftIcons();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30, bottom: 12.5),
                child: const Text(
                  "Ultimas notificaciones",
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
          ListView.builder(
            itemCount: svgList.svgList.length,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12.5,
                ),
                child: NotificationsCard(
                  titulo: notificationsList.notificationsList[index],
                  bgColorTitulo: titleColorList.titleColorList[index],
                  leftIcon: leftIcons.leftIcons[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
