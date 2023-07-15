import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/user_profile/account/my_account.dart';
import 'package:prueba2/src/pages/user_profile/favorites/my_favorites.dart';
import 'package:prueba2/src/pages/user_profile/notifications/my_notifications.dart';
import 'package:prueba2/src/pages/user_profile/reservations/my_reservations.dart';
import 'package:prueba2/src/pages/user_profile/myReviews/my_reviews.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const MyAccount(),
      const MyReservations(),
      const MyFavorites(),
      const MyReviews(),
      const MyNotifications()
    ];
    return myList[index];
  }
}
