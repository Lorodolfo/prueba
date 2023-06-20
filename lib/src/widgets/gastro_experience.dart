import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/images.dart';

// ignore: camel_case_types
class Gastro_Experience extends StatefulWidget {
  final Function(int) onPageChanged;
  final bool isDarkMode;
  final Function(bool) onDarkModeChanged;
  const Gastro_Experience(
      {super.key,
      required this.onPageChanged,
      required this.isDarkMode,
      required this.onDarkModeChanged});

  @override
  State<Gastro_Experience> createState() => _Gastro_ExperienceState();
}

// ignore: camel_case_types
class _Gastro_ExperienceState extends State<Gastro_Experience> {
  int currentPage = 0;
  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imagesList.imageList.length,
      itemBuilder: (context, i, index) {
        return const Card();
      },
      options: CarouselOptions(),
    );
  }
}
