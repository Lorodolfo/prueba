import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:prueba2/src/widgets/my_carousel_discount.dart';
import 'package:prueba2/src/widgets/my_carousel_reservation.dart';
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
  final ValueNotifier<int> _currentPageCarousel3 = ValueNotifier(0);
  final ValueNotifier<int> _currentPageCarousel4 = ValueNotifier(0);
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
                const SizedBox(
                  height: 40,
                ),
                const MySelectors(),
                const SizedBox(
                  height: 50,
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
                        padding: EdgeInsets.only(top: 20, left: 28),
                        child: Text(
                          "¿Parece que no estas en Cancun?",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 3, left: 28),
                        child: Text(
                          "¿No es correcto?",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 9, left: 19.26, bottom: 16),
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
                      const Divider(
                        indent: 2,
                        thickness: 1,
                        color: Colors.black38,
                      ),

                      const Padding(
                        padding:
                            EdgeInsets.only(top: 28.0, left: 18, bottom: 19),
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

                      MyCarouselDiscounts(
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

                      Container(
                        margin: const EdgeInsets.only(top: 17, bottom: 30),
                        child: ValueListenableBuilder(
                            valueListenable: _currentPageCarousel1,
                            builder: (_, value, w) {
                              return DotsGuideDiscounts(
                                  count: imagesList.imageList.length,
                                  currentPage: value);
                            }),
                      ),
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
                      MyCarouselDiscounts(
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
                      Container(
                        margin: const EdgeInsets.only(top: 17, bottom: 30),
                        child: ValueListenableBuilder(
                            valueListenable: _currentPageCarousel2,
                            builder: (_, value, w) {
                              return DotsGuideDiscounts(
                                  count: imagesList.imageList.length,
                                  currentPage: value);
                            }),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: const Color(0xFFFAFAFA),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 18),
                        child: const Text(
                          "Experiencias gastronomicas en",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 18),
                        child: const Text(
                          "Cancun / Riviera Maya",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            width: 171,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepOrange),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Padding(
                              padding:
                                  EdgeInsets.only(left: 18.25, right: 11.3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text("Fecha"),
                                    ],
                                  ),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                          const Row(
                            children: [
                              Text("Ver todos"),
                              Icon(Icons.arrow_right_alt),
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 18, top: 15, bottom: 15),
                        child: Row(
                          children: [
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEFECF3),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              height: 37,
                              width: 58,
                              child: const Center(child: Text("Hoy")),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFEFECF3),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              height: 37,
                              width: 86,
                              child: const Center(child: Text("Mañana")),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFEFECF3),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              height: 37,
                              width: 116,
                              child: const Center(child: Text("Esta semana")),
                            ),
                          ],
                        ),
                      ),
                      MyCarouselReservation(
                          onPageChanged: (index) {
                            _currentPageCarousel3.value = index;
                          },
                          isDarkMode: isDarkMode,
                          onDarkModeChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          }),
                      Container(
                        margin: const EdgeInsets.only(top: 17, bottom: 30),
                        child: ValueListenableBuilder(
                            valueListenable: _currentPageCarousel3,
                            builder: (_, value, w) {
                              return DotsGuideReservation(
                                  count: imagesList.imageList.length,
                                  currentPage: value);
                            }),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 18),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Que hay de nuevo en\n Cancun",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
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
                      MyCarouselReservation(
                          onPageChanged: (index) {
                            _currentPageCarousel4.value = index;
                          },
                          isDarkMode: isDarkMode,
                          onDarkModeChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          }),
                      Container(
                        margin: const EdgeInsets.only(top: 17, bottom: 30),
                        child: ValueListenableBuilder(
                            valueListenable: _currentPageCarousel4,
                            builder: (_, value, w) {
                              return DotsGuideReservation(
                                  count: imagesList.imageList.length,
                                  currentPage: value);
                            }),
                      ),
                    ],
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
