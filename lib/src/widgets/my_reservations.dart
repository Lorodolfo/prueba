import 'package:flutter/material.dart';

class MyReservations extends StatefulWidget {
  const MyReservations({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyReservationsState createState() => _MyReservationsState();
}

class _MyReservationsState extends State<MyReservations> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(text: 'Una '),
                            TextSpan(
                              text: 'mesa',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 85, 43),
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' para ti'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "en cada lugar",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
