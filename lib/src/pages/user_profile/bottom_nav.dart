import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function currentIndex;
  const BottomNav({super.key, required this.currentIndex});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 1.0,
      currentIndex: index,
      selectedItemColor: const Color(0xFFFD390E),
      unselectedItemColor: Colors.black,
      iconSize: 16,
      selectedFontSize: 10,
      unselectedFontSize: 9,
      onTap: (int i) {
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Mi Cuenta',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'Reservaciones'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        BottomNavigationBarItem(
            icon: Icon(Icons.star_border), label: 'Reseñas'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_important_outlined,
            ),
            label: 'Notificaciones'),
      ],
    );
  }
}
