import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/Bookings/prepaid/containers_tip.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrepaidBooking extends StatefulWidget {
  const PrepaidBooking({super.key});

  @override
  State<PrepaidBooking> createState() => _PrepaidBookingState();
}

class _PrepaidBookingState extends State<PrepaidBooking> {
  bool isDarkMode = false;
  bool? ischecked_1 = true;
  bool? ischecked_2 = false;
  bool? ischecked_3 = false;
  bool? ischecked_4 = false;
  int selectedTipIndex = -1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.05;

    return SafeArea(
      child: Scaffold(
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
              Padding(
                padding: EdgeInsets.only(
                  top: 37,
                  left: width,
                  right: width,
                ),
                child: Row(
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
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/galeria1.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cortes, mariscos, buffet... ',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/edit_2.svg",
                          width: 20,
                          height: 20,
                          color: Color(0xFFFF552B),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Editar',
                          style: TextStyle(
                            color: Color(0xFFFF552B),
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
              SizedBox(
                height: 9,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
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
                      SvgPicture.asset(
                        "assets/icons/location.svg",
                        height: 18,
                        width: 18,
                        color: Color(0xFFFF552B),
                      ),
                      SizedBox(
                        width: 4,
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
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.only(left: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.72,
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
                          width: MediaQuery.of(context).size.width * 0.72,
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
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 31,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                  ),
                  child: Text(
                    'Te guardamos esto durante 4:52 minutos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFF552B),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Experiencia reservada',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reserva 2 Pax',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                    ),
                    Text(
                      '\$0 MX',
                      textAlign: TextAlign.right,
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
              SizedBox(
                height: 23,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 x Langosta Thermidor',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '\$3,000 MX',
                      textAlign: TextAlign.right,
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Subtotal:   \$3,000 MX',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Detalles del comensal',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTipIndex =
                                  0; // Actualiza el índice seleccionado
                            });
                          },
                          child: ContainersTip(
                            porcentaje: "22",
                            monto: "444",
                            isSelected: selectedTipIndex == 0,
                            onSelectedChanged: (isSelected) {
                              setState(() {
                                selectedTipIndex = isSelected
                                    ? 0
                                    : -1; // Actualiza el índice seleccionado
                              });
                            },
                          ),
                        ),
                        ContainersTip(
                          porcentaje: "18", monto: "388",
                          isSelected: selectedTipIndex ==
                              0, // Cambia esto a tu lógica de selección
                          onSelectedChanged: (isSelected) {
                            setState(() {
                              selectedTipIndex = isSelected
                                  ? 0
                                  : -1; // Actualiza el índice seleccionado
                            });
                          },
                        ),
                        ContainersTip(
                          porcentaje: "14", monto: "299",
                          isSelected: selectedTipIndex ==
                              0, // Cambia esto a tu lógica de selección
                          onSelectedChanged: (isSelected) {
                            setState(
                              () {
                                selectedTipIndex = isSelected
                                    ? 0
                                    : -1; // Actualiza el índice seleccionado
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ContainersTip(
                          porcentaje: "14", monto: "299",
                          isSelected: selectedTipIndex ==
                              0, // Cambia esto a tu lógica de selección
                          onSelectedChanged: (isSelected) {
                            setState(
                              () {
                                selectedTipIndex = isSelected
                                    ? 0
                                    : -1; // Actualiza el índice seleccionado
                              },
                            );
                          },
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.048,
                        ),
                        ContainersTip(
                          porcentaje: "14", monto: "299",
                          isSelected: selectedTipIndex ==
                              0, // Cambia esto a tu lógica de selección
                          onSelectedChanged: (isSelected) {
                            setState(
                              () {
                                selectedTipIndex = isSelected
                                    ? 0
                                    : -1; // Actualiza el índice seleccionado
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Detalles del comensal',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  children: [
                    Text(
                      'Nombre',
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Ramón',
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
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  children: [
                    Text(
                      'Apellido',
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
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: 324,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Testera',
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
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Teléfono',
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Mex +52',
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 13,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 10),
                      VerticalDivider(
                        indent: 2,
                        endIndent: 2,
                        color: Color(0xFFD5D2DC),
                        thickness: 1,
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 18,
                        color: Color(0xFF666276),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  padding: EdgeInsets.only(left: 11, right: 24),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE8E8E8),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 13,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/candado.svg",
                        width: 23.82,
                        height: 25,
                        color: Color(0xFF757575),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Selecciona una ocasión  (opcional)',
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
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Reservación casual',
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
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Agregar una solicitud especial (opcional)',
                      style: TextStyle(
                        color: Color(0xFF666276),
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Escribir mensaje',
                        style: TextStyle(
                          color: Color(0xFF666276),
                          fontSize: 13,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Detalles del comensal',
                      style: TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/visamaster.png"),
                    ),
                    Image(
                      image: AssetImage("assets/american.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Nombre del Titular',
                        style: TextStyle(
                          color: Color(0xFF9691A4),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Número de la tarjeta',
                        style: TextStyle(
                          color: Color(0xFF9691A4),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  padding: EdgeInsets.only(left: 11, right: 9),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'País región',
                        style: TextStyle(
                          color: Color(0xFF9691A4),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFF666276),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Código postal',
                        style: TextStyle(
                          color: Color(0xFF9691A4),
                          fontSize: 13,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 45,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 9.6,
                          ),
                          Text(
                            'Fecha de expiración',
                            style: TextStyle(
                              color: Color(0xFF9691A4),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 45,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFD5D2DC)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 9.6,
                          ),
                          Text(
                            'CVC',
                            style: TextStyle(
                              color: Color(0xFF9691A4),
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: width, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      tristate: false,
                      value: ischecked_1,
                      onChanged: (newBool) {
                        setState(
                          () {
                            ischecked_1 = newBool!;
                          },
                        );
                      },
                      activeColor: Color(0xFFFF552B),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Agregar la tarjeta para ahorrar tiempo al\nrealizar mis próxima reservas y compras.',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: width, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      tristate: false,
                      value: ischecked_2,
                      onChanged: (newBool) {
                        setState(
                          () {
                            ischecked_2 = newBool!;
                          },
                        );
                      },
                      activeColor: Color(0xFFFF552B),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 300,
                      //MediaQuery.of(context).size.width * .81,
                      child: Text(
                        'Darme de alta para recibir ofertas\ngastronómicas y noticias de este restaurante por email.',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: width, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      tristate: false,
                      value: ischecked_3,
                      onChanged: (newBool) {
                        setState(
                          () {
                            ischecked_3 = newBool!;
                          },
                        );
                      },
                      activeColor: Color(0xFFFF552B),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Darme de alta para recibir ofertas\ngastronómicas y novedades de +mesa\npor email.',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: width, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: ischecked_4,
                      onChanged: (newBool) {
                        setState(
                          () {
                            ischecked_4 = newBool!;
                          },
                        );
                      },
                      tristate: false,
                      activeColor: Color(0xFFFF552B),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Sí, quiero recibir actualizaciones de\ntexto y recordatorios sobre mis\nreservas.',
                        style: TextStyle(
                          color: Color(0xFF443F56),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.583,
                height: 50,
                /*padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 14),*/
                decoration: ShapeDecoration(
                  color: Color(0xFFFF552B),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0x4CCC2601)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'Confirmar reserva',
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
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Al hacer clic en "Confirmar reservas" y aceptas los términos de uso y la política de privacidad de +mesa. se puede aplicar una tarifa de mensaje de texto estándar. puede optar por no recibir mensajes de texto en cualquier momento.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
