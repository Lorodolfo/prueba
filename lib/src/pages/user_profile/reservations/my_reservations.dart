import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/pages/user_profile/reservations/reservations_cards/last_reservations_cards.dart';
import 'package:prueba2/src/pages/user_profile/reservations/reservations_cards/next_reservations_cards.dart';
import 'package:prueba2/src/utils/reservations_lists.dart';

class MyReservations extends StatefulWidget {
  const MyReservations({super.key});

  @override
  State<MyReservations> createState() => _MyReservationsState();
}

class _MyReservationsState extends State<MyReservations> {
  NextStatusSvg nextStatusSvg = NextStatusSvg();
  NextStatusColor nextStatusColor = NextStatusColor();
  NextStatusTitle nextStatusTitle = NextStatusTitle();
  LastStatusSvg lastStatusSvg = LastStatusSvg();
  LastStatusColor lastStatusColor = LastStatusColor();
  LastStatusTitle lastStatusTitle = LastStatusTitle();
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  @override
  Widget build(BuildContext context) {
    final double margins = MediaQuery.of(context).size.width * 0.05;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: margins),
          child: const Row(
            children: [
              Text(
                'Próximas reservaciones',
                style: TextStyle(
                  color: Color(0xFF1E1B2C),
                  fontSize: 16,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return NextReservationsCards(
                  i: index,
                  image: imagesList.imageList[index],
                  name: restaurantsList.restaurantsList[index],
                  nextStatusTitle: nextStatusTitle.nextStatusTitle[index],
                  nextStatusSvg: nextStatusSvg.nextStatusSvg[index],
                  nextStatusColor: nextStatusColor.nextStatusColor[index],
                );
              }),
        ),
        const SizedBox(
          height: 39,
        ),
        Padding(
          padding: EdgeInsets.only(left: margins),
          child: const Row(
            children: [
              Text(
                'Reservaciones pasadas',
                style: TextStyle(
                  color: Color(0xFF1E1B2C),
                  fontSize: 16,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return LastReservationsCards(
                  i: index,
                  image: imagesList.imageList[index],
                  name: restaurantsList.restaurantsList[index],
                  lastStatusColor: lastStatusColor.lastStatusColor[index],
                  lastStatusSvg: lastStatusSvg.lastStatusSvg[index],
                  lastStatusTitle: lastStatusTitle.lastStatusTitle[index],
                );
              }),
        ),
      ],
    );
  }
}
