import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:prueba2/src/pages/search_results.dart';
import 'package:prueba2/src/pages/user_profile/user_profile_page.dart';
import 'package:prueba2/src/widgets/time_picker_modal.dart';

class MyHomeSearch extends StatefulWidget {
  const MyHomeSearch({super.key});

  @override
  State<MyHomeSearch> createState() => _MyHomeSearchState();
}

class _MyHomeSearchState extends State<MyHomeSearch> {
  bool showText = true;
  DateTime _dateTime = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd-MM-yyyy');
  late TimePickerModal _timePickerModal;

  void toggleText() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  void initState() {
    super.initState();
    _timePickerModal = TimePickerModal(
      onTimeSelected: _updateDateTime,
    );
  }

  void _updateDateTime(DateTime selectedTime) {
    setState(() {
      _dateTime = selectedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double ancho = 21;
    const double alturaCont = 50;

    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.only(left: 26.5, right: 11.5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          height: alturaCont,
          width: MediaQuery.of(context).size.width - ancho,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: _showDatePicker,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/calendar.svg"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width <= 380
                          ? 10
                          : MediaQuery.of(context).size.width <= 393
                              ? 14
                              : MediaQuery.of(context).size.width <= 499
                                  ? 22
                                  : 44,
                    ),
                    Text(
                      DateFormat('dd-MMM-yyyy').format(_dateTime),
                      style: const TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Icon(Icons.keyboard_arrow_down, color: Colors.grey[500]),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return _timePickerModal;
                    },
                  ).then((value) {
                    if (value != null) {
                      _updateDateTime(value);
                    }
                  });
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/time.svg"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width <= 380
                          ? 10
                          : MediaQuery.of(context).size.width <= 393
                              ? 14
                              : MediaQuery.of(context).size.width <= 499
                                  ? 22
                                  : 44,
                    ),
                    Text(
                      DateFormat.Hm().format(_dateTime),
                      style: const TextStyle(
                        color: Color(0xFF443F56),
                        fontSize: 16,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 18),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.only(left: 25, right: 14.11),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          height: alturaCont,
          width: MediaQuery.of(context).size.width - ancho,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/icons/avatar.svg"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width <= 380
                        ? 10
                        : MediaQuery.of(context).size.width <= 393
                            ? 14
                            : MediaQuery.of(context).size.width <= 499
                                ? 22
                                : 44,
                  ),
                  const Text(
                    "2 Personas",
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 16,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Icon(Icons.keyboard_arrow_down, color: Colors.grey[500]),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.only(left: 27, right: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          height: alturaCont,
          width: MediaQuery.of(context).size.width - ancho,
          child: GestureDetector(
            onTap: toggleText,
            child: Row(
              children: [
                const Icon(Icons.search),
                Container(
                  child: showText
                      ? const Text(
                          "Restaurantes, ubicaciones, comidas",
                          style: TextStyle(
                            color: Color(0xFF443F56),
                            fontSize: 16,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchResults(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(
              top: 15,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFFF552B),
              borderRadius: BorderRadius.circular(40),
            ),
            height: alturaCont - 10,
            width: MediaQuery.of(context).size.width * 0.57,
            child: const Center(
              child: Text(
                "¡Buscar Mesa!",
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
    );
  }

  void _showDatePicker() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );

    if (picked != null) {
      setState(() {
        _dateTime = DateTime(
          picked.year,
          picked.month,
          picked.day,
          _dateTime.hour,
          _dateTime.minute,
        );
      });
    }
  }
}
