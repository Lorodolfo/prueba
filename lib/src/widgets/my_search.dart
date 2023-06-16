import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MySearch extends StatefulWidget {
  const MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  bool showText = true;

  void toggleText() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double ancho = 40;
    const double alturaCont = 65;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          height: alturaCont,
          width: MediaQuery.of(context).size.width - ancho,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.calendar_month_outlined),
                  const SizedBox(width: 5),
                  Text(
                    DateFormat('dd-MMM-yyyy').format(DateTime.now()),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(Icons.keyboard_arrow_down, color: Colors.grey[500]),
                ],
              ),
              const SizedBox(
                height: 40,
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_outlined),
                  const SizedBox(width: 10),
                  const Text(
                    '12:00 AM',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 18),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          height: alturaCont,
          width: MediaQuery.of(context).size.width - ancho,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.person_outline_outlined),
                  SizedBox(width: 10),
                  Text(
                    "3 Personas",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Icon(Icons.keyboard_arrow_down, color: Colors.grey[500]),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          height: alturaCont,
          width: MediaQuery.of(context).size.width - ancho,
          child: GestureDetector(
            onTap: toggleText,
            child: Row(
              children: [
                const Icon(Icons.search),
                Container(
                  child: showText
                      ? const Text(
                          "Restaurantes, ubicaciones, comidas",
                          overflow: TextOverflow.ellipsis,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xFFFD390E),
            borderRadius: BorderRadius.circular(30),
          ),
          height: alturaCont - 10,
          width: MediaQuery.of(context).size.width - ancho * 5,
          child: const Center(
            child: Text(
              "¡Buscar Mesa!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
