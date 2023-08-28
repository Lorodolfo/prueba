// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingAddOns extends StatefulWidget {
  const BookingAddOns({super.key});

  @override
  State<BookingAddOns> createState() => _BookingAddOnsState();
}

class _BookingAddOnsState extends State<BookingAddOns> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/cross.svg",
                        height: 35,
                        width: 35,
                        color: Color(0xFF454C56),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Text(
                    "Harry's Cancun Prime Steak",
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
                height: 13,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 87,
                      height: 83,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/galeria1.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 5,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width <= 380
                          ? 5
                          : MediaQuery.of(context).size.width <= 393
                              ? 14
                              : MediaQuery.of(context).size.width <= 499
                                  ? 22
                                  : 44,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.672,
                          height: 34,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: ShapeDecoration(
                            color: Color(0xFFF1F1F1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/calendar.svg",
                                height: 18,
                                width: 18,
                                color: Color(0xFF443F56),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '23 Sep 2022',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              VerticalDivider(
                                indent: 2,
                                endIndent: 2,
                                color: Colors.black,
                                thickness: 1.3,
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              SvgPicture.asset(
                                "assets/icons/clock.svg",
                                height: 18,
                                width: 18,
                                color: Color(0xFF443F56),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '19:00',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.672,
                          height: 34,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: ShapeDecoration(
                            color: Color(0xFFF1F1F1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/avatar.svg",
                                height: 18,
                                width: 18,
                                color: Color(0xFF443F56),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '2 personas',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              VerticalDivider(
                                indent: 2,
                                endIndent: 2,
                                color: Colors.black,
                                thickness: 1.3,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              SvgPicture.asset(
                                "assets/icons/table.svg",
                                height: 18,
                                width: 18,
                                color: Color(0xFF443F56),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Terraza',
                                style: TextStyle(
                                  color: Color(0xFF443F56),
                                  fontSize: 16,
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
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 21,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      SvgPicture.asset(
                        "assets/icons/star.svg",
                        color: Color(0xFFFDBC31),
                        height: 18,
                        width: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '5.0',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '(48)',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 13,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      VerticalDivider(
                        thickness: 1.3,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Cortes, mariscos, buffet... ',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Selecciona tu tipo de reserva',
                      style: TextStyle(
                        color: Color(0xFFFF552B),
                        fontSize: 18,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 180,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x59000000),
                        blurRadius: 8,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cena romántica bajo las estrell...',
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 16,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Transform.scale(
                            scale: 1.4,
                            child: Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val!;
                                });
                              },
                              visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity,
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              activeColor: Color(0xFF0FE576),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 116,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFC9C9C9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Harry’s Cancun Prime Steak',
                                      style: TextStyle(
                                        color: Color(0xFF443F56),
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/icons/location.svg",
                                      height: 18,
                                      width: 18,
                                      color: Color(0xFF443F56),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      'Cancún',
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
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/creditCard.svg",
                                      height: 18,
                                      width: 18,
                                      color: Color(0xFF443F56),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      '\$1,800.00 MXN por persona',
                                      style: TextStyle(
                                        color: Color(0xFF443F56),
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Carnes, mariscos, pastas.',
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
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 22,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/long_arrow_left.svg",
                        color: Color(0xFFFF552B),
                        height: 22,
                        width: 22,
                      ),
                      Text(
                        'Atrás',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFFF552B),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'Añade Add-ons a tu reserva  ',
                      style: TextStyle(
                        color: Color(0xFFFF552B),
                        fontSize: 18,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Opcional',
                      style: TextStyle(
                        color: Color(0xFFFF552B),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add ons elegido',
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '\$1,000 Mx por persona',
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 14,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.944,
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Color(0xFFEAEAEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/circle_minus.svg",
                        height: 35,
                        width: 35,
                        color: Color(0xFFFF552B),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.25, color: Color(0xFFFF552B)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '0',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF443F56),
                              fontSize: 18,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      SvgPicture.asset(
                        "assets/icons/circleplus.svg",
                        height: 35,
                        width: 35,
                        color: Color(0xFFFF552B),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 119),
              Container(
                height: 90,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 8,
                      offset: Offset(0, -5),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BookingAddOns(),
                        ),
                      );*/
                    },
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * .9,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 119, vertical: 15),
                      decoration: ShapeDecoration(
                        color: Color(0xFFFF552B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Siguiente',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
