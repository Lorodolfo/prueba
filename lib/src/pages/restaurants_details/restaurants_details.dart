// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba2/src/pages/images.dart';
import 'package:prueba2/src/pages/restaurants_details/customers_reviews.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';

class RestaurantsDetails extends StatefulWidget {
  final int id; // Parámetro para el publicationId
  final String image;
  final String publicationName;
  const RestaurantsDetails({
    super.key,
    required this.id,
    required this.image,
    required this.publicationName,
  });

  @override
  State<RestaurantsDetails> createState() => _RestaurantsDetailsState();
}

class _RestaurantsDetailsState extends State<RestaurantsDetails> {
  bool isDarkMode = false;
  bool showAllDetails = false;
  ImagesList imagesList = ImagesList();
  RestaurantsList restaurantsList = RestaurantsList();

  @override
  Widget build(BuildContext context) {
    final double margins = MediaQuery.of(context).size.width * 0.05;
    //bool showAllDetails = false;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget(
          isDarkMode: isDarkMode,
          onDarkModeChanged: (value) {
            setState(
              () {
                isDarkMode = value;
              },
            );
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 236,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: NetworkImage(widget.image
                          //"assets/1.jpg"
                          ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 218,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(12),
                      ),
                      height: 33,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .075),
                child: TabBar(
                  labelColor: Color(0xFFFD5631),
                  labelStyle: TextStyle(
                    color: Color(0xFF443F56),
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: Color(0xFF454056),
                  unselectedLabelStyle: TextStyle(
                    color: Color(0xFF443F56),
                    fontSize: 16,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w400,
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 1),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      text: "Resumen",
                    ),
                    Tab(
                      text: "Fotos",
                    ),
                    Tab(
                      text: "Menu",
                    ),
                    Tab(
                      text: "Reseñas",
                    ),
                  ],
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 1),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Container(
                  //width: 324,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFEFECF3),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.publicationName,
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 20,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                        height: 1.30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Container(
                  //width: 324,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFEFECF3),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/star.svg",
                      color: Color(0xFFFDBC31),
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset(
                      "assets/icons/star.svg",
                      color: Color(0xFFFDBC31),
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset(
                      "assets/icons/star.svg",
                      color: Color(0xFFFDBC31),
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset(
                      "assets/icons/star.svg",
                      color: Color(0xFFFDBC31),
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset(
                      "assets/icons/star.svg",
                      color: Color(0xFFFDBC31),
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '5.0',
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      "assets/icons/file2.svg",
                      width: 16,
                      height: 16,
                      color: Color(0xFF666276),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '197 Reseñas',
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/creditCard.svg",
                      width: 16,
                      height: 16,
                      color: Color(0xFF666276),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'De MXN310 a MXN500',
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/restaurant.svg",
                      width: 16,
                      height: 16,
                      color: Color(0xFF666276),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Mexicana regional',
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "CAO ofrece una propuesta gastronómica irreverente representando sabores y sazones de cada rincón de México. Cada uno de sus platillos se distingue por sus ingredientes de primera calidad y frescura. La música creada por nuestro DJ, hace que el ambiente sea perfecto para pasar un gran momento con amigos, familia o tu pareja. Su oferta de vinos, bebidas y postres complementan la gran experiencia de vivir CAO.\n",
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '+ Más información',
                        style: TextStyle(
                          color: Color(0xFFFF552B),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Infomación adicional',
                      style: TextStyle(
                        color: Color(0xFF5C586B),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/file2.svg",
                      width: 20,
                      height: 20,
                      color: Color(0xFF5C586B),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Zona",
                          style: TextStyle(
                            color: Color(0xFF5C586B),
                            fontSize: 13,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Cancún",
                          style: TextStyle(
                            color: Color(0xFF5C586B),
                            fontSize: 13,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Visibility(
                visible: showAllDetails,
                maintainSize: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/clock.svg",
                            width: 20,
                            height: 20,
                            color: Color(0xFF5C586B),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Horarios",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Todos los días 13:00–23:30",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/restaurant.svg",
                            width: 20,
                            height: 20,
                            color: Color(0xFF5C586B),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cocinas",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Mexicana regional, Norteña, Pescados y\nMariscos",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/concierge-bell.svg",
                            width: 24,
                            height: 24,
                            color: Color(0xFF5C586B),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ambiente",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Informal",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/clothes.svg",
                            width: 25,
                            height: 25,
                            color: Color(0xFF5C586B),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vestimenta recomendada",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Ropa informal",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/parking.svg",
                            width: 20,
                            height: 20,
                            color: Color(0xFF5C586B),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Detalles del área de estacionamiento",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Estacionamiento privado",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/creditCard.svg",
                            width: 18,
                            height: 18,
                            color: Color(0xFF5C586B),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Opciones de pago",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Estacionamiento privado",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/chef.svg",
                            width: 20,
                            height: 20,
                            color: Color(0xFF5C586B),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chef ejecutivo",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Jorge Boneta",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margins),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/circleplus.svg",
                            width: 20,
                            height: 20,
                            color: Color(0xFF5C586B),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Adicional",
                                style: TextStyle(
                                  color: Color(0xFF5C586B),
                                  fontSize: 13,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          "Asientos en la barra, Bar completo, Cafetería,\nCervezas, Cócteles, Comida al aire libre, Comida\nal aire libre, Comida para llevar, Opciones libres\nde gluten, Sala para fumar, Vegana, Vinos, Vista,\nZona exterior para fumadores.",
                                      style: TextStyle(
                                        color: Color(0xFF5C586B),
                                        fontSize: 13,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/circleplus.svg",
                        height: 20,
                        width: 20,
                        color: Color(0xFFFF552B),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showAllDetails = !showAllDetails;
                          });
                        },
                        child: Text(
                          showAllDetails ? 'Ver menos' : 'ver mas',
                          style: TextStyle(
                            color: Color(0xFFFF552B),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFD0D0D0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.066),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Experiencias',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 20,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Container(
                  width: 332,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFEFECF3),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: 481,
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Degustare',
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 16,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/calendar.svg",
                            height: 13,
                            width: 13,
                            color: Color(0xFF454056),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Varias fechas disponibles',
                            style: TextStyle(
                              color: Color(0xFF454056),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/creditCard.svg",
                            width: 13,
                            height: 13,
                            color: Color(0xFF454056),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '\$1,500.00 MX por persona',
                            style: TextStyle(
                              color: Color(0xFF454056),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Text(
                            'Add-ons disponibles',
                            style: TextStyle(
                              color: Color(0xFFFF552B),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'La experiencia Degustare involucra los tres\ngrupos de delicias que ofrece Bovinos\nSteakhouse & Seafood: la Barra de\nEspecialidades Gourmet',
                            style: TextStyle(
                                color: Color(0xFF5C586B),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                                height: 1.1),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image(
                        height: 173,
                        width: MediaQuery.of(context).size.width,
                        image: AssetImage(
                          "assets/degustare.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.53,
                          height: 44,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF552B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Reservar',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: 437,
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Cena y Pelea de Piratas',
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 16,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/calendar.svg",
                            height: 16,
                            width: 16,
                            color: Color(0xFF443F56),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Varias fechas disponibles',
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/creditCard.svg",
                            width: 16,
                            height: 16,
                            color: Color(0xFF443F56),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '\$1,575.00 MX por persona',
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'Serás recibido en el muelle por verdaderos\npiratas, listos para zarpar contigo en una\nauténtica réplica de galeón español a una ',
                            style: TextStyle(
                                color: Color(0xFF5C586B),
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w400,
                                height: 1.1),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image(
                        height: 173,
                        width: MediaQuery.of(context).size.width,
                        image: AssetImage(
                          "assets/pirates.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.53,
                          height: 44,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF552B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Reservar',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFEFECF3),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.066),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Galería',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 20,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFEFECF3),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: DefaultTabController(
                  length: 5,
                  child: TabBar(
                    labelColor: Color(0xFFFD5631),
                    labelStyle: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 16,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                    unselectedLabelColor: Color(0xFF454056),
                    unselectedLabelStyle: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 16,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    labelPadding: EdgeInsets.symmetric(horizontal: 1),
                    indicatorColor: Colors.transparent,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 1),
                    tabs: [
                      Tab(
                        text: "Todas",
                      ),
                      Tab(
                        text: "Interior",
                      ),
                      Tab(
                        text: "Exterior",
                      ),
                      Tab(
                        text: "Platillos",
                      ),
                      Tab(
                        text: "Ambiente",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFEFECF3),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Image(
                  image: AssetImage("assets/galeria1.png"),
                  height: 332,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage("assets/galeria1.png"),
                      height: 70,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    Image(
                      image: AssetImage("assets/galeria1.png"),
                      height: 70,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    Image(
                      image: AssetImage("assets/galeria1.png"),
                      height: 70,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    Image(
                      image: AssetImage("assets/galeria1.png"),
                      height: 70,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Menú',
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 20,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFEFECF3),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Enchiladas',
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 16,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.455,
                      height: 237,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x26000000),
                            blurRadius: 10,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/menu1.jpg"),
                            height: 186,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Enchiladas',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFFF552B),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                width: 22,
                                height: 22,
                                padding: const EdgeInsets.all(5),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFF552B),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/icons/edit_2.svg",
                                      height: 12,
                                      width: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFEFECF3),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Última actualización: 26 de septiembre de 2022',
                          style: TextStyle(
                            color: Color(0xFF666276),
                            fontSize: 12,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Lo que 197 personas están diciendo',
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 18,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Calificaciones y reseñas generales',
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Solo los comensales que han comido en este\nrestaurante pueden realiza reseñas.',
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          color: Color(0xFFFF552B),
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          color: Color(0xFFFF552B),
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          color: Color(0xFFFF552B),
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          color: Color(0xFFFF552B),
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          color: Color(0xFFFF552B),
                          width: 16,
                          height: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '5.0 de acuerdo a calificaciones recientes',
                          style: TextStyle(
                            color: Color(0xFF666276),
                            fontSize: 12,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '4.4',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Comida',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          VerticalDivider(
                            thickness: 9,
                            color: Colors.red,
                            //color: Color(0xFF9691A4),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '4.4',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Servicio',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          VerticalDivider(
                            thickness: 2,
                            indent: 2,
                            endIndent: 2,
                            color: Color(0xFF9691A4),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '4.5',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Ambiente',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          VerticalDivider(
                            thickness: 2,
                            indent: 2,
                            endIndent: 2,
                            color: Color(0xFF9691A4),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '4.3',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'General',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomersReviews(
                ambience: 4,
                customer_name: "Carlos",
                date: "Comieron el 22 de sep",
                food: 4,
                image: "assets/avatar_review.png",
                likes: 4,
                location: "Cancun",
                overall: 4,
                restaurant_answer:
                    "Hola Carlos, gracias por tu comentario y por\nhaber elegido a Harry's Cancun Prime Steak.",
                restaurant_name: "Harry's Cancun Prime Steak",
                review:
                    "Excelente atención, los platillos súper deliciosos,\nporciones considerables, variedad de mixologia,\nel audio súper moderado pudimos platicar\nagusto y disfrutar la vista tan bonita que tiene el\nmuelle",
                review_date: "Respuesta enviada hace 7 dias",
                review_likes: 3,
                reviews_number: "3",
                reviews_title: "nose",
                service: 4,
              ),
              CustomersReviews(
                ambience: 4,
                customer_name: "Carlos",
                date: "Comieron el 21 de sep",
                food: 4,
                image: "assets/avatar_review.png",
                likes: 4,
                location: "Cancun",
                overall: 4,
                restaurant_answer:
                    "Hola Jose, gracias por tu comentario y por\nhaber elegido a Harry's Cancun Prime Steak.",
                restaurant_name: "Harry's Cancun Prime Steak",
                review:
                    "Excelente atención, los platillos súper deliciosos,\nporciones considerables, variedad de mixologia,\nel audio súper moderado pudimos platicar\nagusto y disfrutar la vista tan bonita que tiene el\nmuelle",
                review_date: "Respuesta enviada hace 8 dias",
                review_likes: 3,
                reviews_number: "3",
                reviews_title: "nose",
                service: 4,
              ),
              CustomersReviews(
                ambience: 4,
                customer_name: "Jose",
                date: "Comieron el 22 de sep",
                food: 4,
                image: "assets/avatar_review.png",
                likes: 4,
                location: "Cancun",
                overall: 4,
                restaurant_answer:
                    "Hola Carlos, gracias por tu comentario y por\nhaber elegido a Harry's Cancun Prime Steak.",
                restaurant_name: "Harry's Cancun Prime Steak",
                review:
                    "Excelente atención, los platillos súper deliciosos,\nporciones considerables, variedad de mixologia,\nel audio súper moderado pudimos platicar\nagusto y disfrutar la vista tan bonita que tiene el\nmuelle",
                review_date: "Respuesta enviada hace 7 dias",
                review_likes: 3,
                reviews_number: "3",
                reviews_title: "nose",
                service: 4,
              ),
              const SizedBox(
                height: 33,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: margins),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Preguntas frecuentes',
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 20,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFEFECF3),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    '¿Ofrece pedidos a domicilo o para llevar\npor medio de ',
                                style: TextStyle(
                                  color: Color(0xFF666276),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '+',
                                style: TextStyle(
                                  color: Color(0xFFFF552B),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'mesa?',
                                style: TextStyle(
                                  color: Color(0xFF666276),
                                  fontSize: 14,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFEFECF3),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '¿Cúal es la calificación de Harrys Cancún\nen Modern Mexican Kitchen?',
                          style: TextStyle(
                            color: Color(0xFF666276),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFEFECF3),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '¿Harrys Cancún está\naceptando reservaciones? ',
                          style: TextStyle(
                            color: Color(0xFF666276),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 96,
            padding: const EdgeInsets.only(
              top: 9,
              left: 18,
              right: 15,
              bottom: 11,
            ),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 5,
                  offset: Offset(0, -4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Harry's Cancun Prime Steak",
                  style: TextStyle(
                    color: Color(0xFF443F56),
                    fontSize: 20,
                    fontFamily: 'Noto Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  height: 41,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF552B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Haz tu reservación',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
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
