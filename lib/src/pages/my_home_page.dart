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
  final ValueNotifier<int> _currentPage = ValueNotifier(0);

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
            child: Container(
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
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          "¿Parece que no estas en cancun",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "¿No es correcto?",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
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
                      /*Icons.arrow_right_alt)Container(
                        //width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.deepOrange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),*/
                      Padding(
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
                            _currentPage.value = index;
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
                          valueListenable: _currentPage,
                          builder: (_, value, w) {
                            return DotsGuide(
                                count: imagesList.imageList.length,
                                currentPage: value);
                          }),
                      Padding(
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
                            _currentPage.value = index;
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
                          valueListenable: _currentPage,
                          builder: (_, value, w) {
                            return DotsGuide(
                                count: imagesList.imageList.length,
                                currentPage: value);
                          }),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 50,
                  width: 400,
                  color: isDarkMode ? Colors.grey : Colors.white,
                  child: Text(
                    'Texto 1',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 50,
                  width: 400,
                  color: isDarkMode ? Colors.grey : Colors.white,
                  child: Text(
                    'Texto 1',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(bottom: 40),
                  height: 50,
                  width: 400,
                  color: isDarkMode ? Colors.grey : Colors.white,
                  child: Text(
                    'Texto 1',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(bottom: 40),
                  height: 50,
                  width: 400,
                  color: isDarkMode ? Colors.grey : Colors.white,
                  child: Text(
                    'Texto 1',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
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
