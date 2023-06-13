import 'package:flutter/material.dart';

class MiniContainers extends StatelessWidget {
  const MiniContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.deepOrange,
                width: 1.0,
              ),
              gradient: const LinearGradient(
                colors: [Colors.white, Colors.white, Colors.deepOrange],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.5, 0.5],
              ),
            ),
            height: 40,
            width: 55,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "05:30 PM",
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(height: 8),
                Text(
                  "30 %",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
