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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(text: 'Una '),
                      TextSpan(
                        text: 'mesa',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' en cada lugar'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
