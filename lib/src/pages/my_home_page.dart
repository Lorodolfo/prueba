import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:prueba2/src/widgets/my_carousel.dart';
import 'package:prueba2/src/widgets/my_reservations.dart';
import 'package:prueba2/src/widgets/my_search.dart';
import 'package:prueba2/src/widgets/my_selectors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ValueNotifier<int> _currentPageCarousel1 = ValueNotifier(0);
  final ValueNotifier<int> _currentPageCarousel2 = ValueNotifier(0);

  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        isDarkMode: isDarkMode,
        onDarkModeChanged: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
      body: Stack(
        children: [
          Positioned.fill(
            //width: double.infinity,
            child: SizedBox(
              width: double.infinity,
              height: 750,
              child: Image.asset(
                "assets/bg.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MyReservations(),
                const MySearch(),
                const MySelectors(),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          "¿Parece que no estas en cancun",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "¿No es correcto?",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.deepOrange,
                            ),
                            Text(
                              "Obtener Ubicacion Actual",
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      //width: MediaQuery.of(context).size.width,
                      Divider(
                        indent: 2,
                        thickness: 1,
                        color: Colors.deepOrange,
                      ),

                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Disponible para la cena",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text("Ver todos"),
                                Icon(Icons.arrow_right_alt),
                              ],
                            )
                          ],
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 4 / 5,
                        child: MyCarousel(
                          onPageChanged: (index) {
                            _currentPageCarousel1.value = index;
                          },
                          isDarkMode: isDarkMode,
                          onDarkModeChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          },
                        ),
                      ),
                      ValueListenableBuilder(
                          valueListenable: _currentPageCarousel1,
                          builder: (_, value, w) {
                            return DotsGuide(
                                count: imagesList.imageList.length,
                                currentPage: value);
                          }),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Comida al aire libre",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text("Ver todos"),
                                Icon(Icons.arrow_right_alt),
                              ],
                            )
                          ],
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 4 / 5,
                        child: MyCarousel(
                          onPageChanged: (index) {
                            _currentPageCarousel2.value = index;
                          },
                          isDarkMode: isDarkMode,
                          onDarkModeChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          },
                        ),
                      ),
                      ValueListenableBuilder(
                          valueListenable: _currentPageCarousel2,
                          builder: (_, value, w) {
                            return DotsGuide(
                                count: imagesList.imageList.length,
                                currentPage: value);
                          }),
                    ],
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
