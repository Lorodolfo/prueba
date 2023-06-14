import 'package:flutter/material.dart';
import 'package:prueba2/src/utils/container_types.dart';

class MySelectors extends StatelessWidget {
  const MySelectors({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: ContainerTypes(
                icon: Icons.dining_outlined,
                iconColor: Colors.deepOrangeAccent,
                text: "Restaurantes",
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ancho: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 35),
              child: ContainerTypes(
                ancho: 150,
                icon: Icons.wine_bar_rounded,
                iconColor: Colors.yellow,
                text: "Comer y Beber",
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: ContainerTypes(
                icon: Icons.nightlife_outlined,
                iconColor: Colors.blueGrey,
                text: "Vida Nocturna",
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ancho: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 35),
              child: ContainerTypes(
                ancho: 150,
                icon: Icons.warning_amber_outlined,
                iconColor: Colors.green,
                text: "Club de playa",
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: ContainerTypes(
              ancho: 120,
              icon: Icons.event_note,
              iconColor: Colors.deepOrangeAccent,
              text: "Eventos",
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
