import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:prueba2/src/widgets/my_carousel_aire_libre.dart';
import 'package:prueba2/src/widgets/my_carousel_cena.dart';
import 'package:prueba2/src/widgets/my_carousel_cena2.dart';
import 'package:prueba2/src/widgets/my_carousel_experiencia.dart';
import 'package:prueba2/src/widgets/my_carousel_news.dart';
import 'package:prueba2/src/widgets/my_carousel_novedades.dart';
import 'package:prueba2/src/widgets/wellcome_text.dart';
import 'package:prueba2/src/widgets/my_home_search.dart';
import 'package:prueba2/src/widgets/my_selectors.dart';
import 'package:prueba2/src/widgets/home_page_footer.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ValueNotifier<int> _currentPageCarousel_cena = ValueNotifier(0);
  final ValueNotifier<int> _currentPageCarousel_aire_libre = ValueNotifier(0);
  final ValueNotifier<int> _currentPageCarousel_experiencia = ValueNotifier(0);
  final ValueNotifier<int> _currentPageCarousel_novedades = ValueNotifier(0);
  final ValueNotifier<int> _currentPageCarousel_news = ValueNotifier(0);
  bool isDarkMode = false;
  ImagesList imagesList = ImagesList();
  String generateHeroTag(String baseTag, int index) {
    return '$baseTag$index';
  }

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
              height: 650,
              child: Image.asset(
                "assets/bg_image.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 26),
                const WellcomeText(),
                const MyHomeSearch(),
                const SizedBox(
                  height: 49,
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
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 3, left: 28),
                        child: Text(
                          "¿No es correcto?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 9, left: 18, bottom: 16),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/location.svg"),
                            const SizedBox(width: 5),
                            const Text(
                              "Obtener Ubicacion Actual",
                              style: TextStyle(
                                  color: Color(0xFFFF2F01),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 18,
                        endIndent: 18,
                        thickness: 0.5,
                        color: Color.fromARGB(255, 19, 17, 17),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 28.0, left: 18, bottom: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Disponible para el\nalmuerzo ahora',
                              style: TextStyle(
                                color: Color(0xFF1E1B2C),
                                fontSize: 18,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Ver todos",
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_right_alt),
                              ],
                            ),
                          ],
                        ),
                      ),
                      /*MyCarouselCena(
                        onPageChanged: (index) {
                          _currentPageCarousel_cena.value = index;
                        },
                        isDarkMode: isDarkMode,
                        onDarkModeChanged: (value) {
                          setState(() {
                            isDarkMode = value;
                          });
                        },
                      ),*/
                      MyCarouselCenaPrueba(
                        onPageChanged: (index) {
                          _currentPageCarousel_cena.value = index;
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
                            valueListenable: _currentPageCarousel_cena,
                            builder: (_, value, w) {
                              return DotsGuideCena(
                                  count: imagesList.imageList.length,
                                  currentPage: value);
                            }),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Comida al aire libre",
                              style: TextStyle(
                                  color: Color(0xFF1E1B2C),
                                  fontSize: 18,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Ver todos",
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_right_alt),
                              ],
                            ),
                          ],
                        ),
                      ),
                      MyCarouselAireLibre(
                        onPageChanged: (index) {
                          _currentPageCarousel_aire_libre.value = index;
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
                            valueListenable: _currentPageCarousel_aire_libre,
                            builder: (_, value, w) {
                              return DotsGuideAireLibre(
                                  count: imagesList.imageList.length,
                                  currentPage: value);
                            }),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    border: Border.all(color: Colors.white),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 18, top: 12),
                        child: const Text(
                          "Experiencias gastronomicas en",
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 16,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 18),
                        child: const Text(
                          "Cancun / Riviera Maya",
                          style: TextStyle(
                            color: Color(0xFF1E1B2C),
                            fontSize: 16,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 18, right: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 171,
                              height: 37,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x141F1B2D),
                                    blurRadius: 12,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: Color(0x141F1B2D),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                    spreadRadius: -2,
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/icons/calendar_2.svg"),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Text(
                                        "Fecha",
                                        style: TextStyle(
                                          color: Color(0xFFFF2F01),
                                          fontSize: 14,
                                          fontFamily: 'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xFFFF2F01),
                                  ),
                                ],
                              ),
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Ver todos",
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_right_alt),
                              ],
                            ),
                          ],
                        ),
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
                              child: const Center(
                                  child: Text(
                                'Hoy',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
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
                              child: const Center(
                                child: Text(
                                  'Mañana',
                                  style: TextStyle(
                                    color: Color(0xFF443F56),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
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
                              child: const Center(
                                child: Text(
                                  'Esta semana',
                                  style: TextStyle(
                                    color: Color(0xFF443F56),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      MyCarouselExperiencia(
                          onPageChanged: (index) {
                            _currentPageCarousel_experiencia.value = index;
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
                            valueListenable: _currentPageCarousel_experiencia,
                            builder: (_, value, w) {
                              return DotsGuideExperiencia(
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
                              "Que hay de nuevo en\nCancun",
                              style: TextStyle(
                                color: Color(0xFF1E1B2C),
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Ver todos",
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_right_alt),
                              ],
                            ),
                          ],
                        ),
                      ),
                      MyCarouselNovedades(
                          onPageChanged: (index) {
                            _currentPageCarousel_novedades.value = index;
                          },
                          isDarkMode: isDarkMode,
                          onDarkModeChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          }),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 17, bottom: 30),
                        child: ValueListenableBuilder(
                            valueListenable: _currentPageCarousel_novedades,
                            builder: (_, value, w) {
                              return DotsGuideNovedades(
                                  count: imagesList.imageList.length,
                                  currentPage: value);
                            }),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 18, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "No te pierdas\nnuestras ultimas noticias",
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  color: Color(0xFF1E1B2C),
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Ver todos",
                                  style: TextStyle(
                                    color: Color(0xFF666276),
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_right_alt),
                              ],
                            ),
                          ],
                        ),
                      ), // aqui
                      MyCarouselNews(
                        onPageChanged: (index) {
                          _currentPageCarousel_news.value = index;
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
                            valueListenable: _currentPageCarousel_news,
                            builder: (_, value, w) {
                              return DotsGuideNews(
                                  count: 4, currentPage: value);
                            }),
                      ),

                      Center(
                        child: Container(
                          padding: const EdgeInsets.only(
                            bottom: 50.0,
                          ),
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 420,
                            width: 320,
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/registerImage.png",
                                  fit: BoxFit.cover,
                                ),
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 51),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          width: 283,
                                          child: Text(
                                            'Registra tu restaurante ahora mismo',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontFamily: 'Noto Sans',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 51,
                                        ),
                                        const SizedBox(
                                          width: 282,
                                          child: Text(
                                            'Súmate a los más de 2,000 restaurantes que llenan todas sus mesas, administra tus reservaciones con:',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: 'Noto Sans',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        /*Container(
                                          height: 48,
                                          width: 97,
                                          child: SvgPicture.asset(
                                              "assets/logo_blanco.svg"),
                                        ),
                                        Image.asset("assets/logo_blanco.jpg",
                                            fit: BoxFit.fill),*/
                                        const SizedBox(height: 19),
                                        Container(
                                          width: 97,
                                          height: 48,
                                          child: Image.asset(
                                            "assets/masmesalogo.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const SizedBox(height: 27),
                                        Container(
                                          height: 45,
                                          width: 170,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: const Color.fromARGB(
                                                255, 255, 85, 43),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "+ Añadir negocio",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      HomePageFooter(),
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
