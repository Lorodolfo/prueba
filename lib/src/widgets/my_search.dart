import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:prueba2/src/widgets/persons_picker_modal.dart';
import 'package:prueba2/src/widgets/time_picker_modal.dart';

class MySearch extends StatefulWidget {
  final Function(DateTime, DateTime, int) onSearchRequested;
  const MySearch({Key? key, required this.onSearchRequested}) : super(key: key);

  @override
  _MySearchState createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  bool showText = true;
  int selectedPeople = 2;
  DateTime _dateTime = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd-MM-yyyy');
  late TimePickerModal _timePickerModal;
  void handlePeopleSelected(int people) {
    setState(() {
      selectedPeople = people;
    });
    widget.onSearchRequested(_dateTime, _dateTime, selectedPeople);
  }

  @override
  void initState() {
    super.initState();
    _timePickerModal = TimePickerModal(
      onTimeSelected: _updateDateTime,
    );
  }

  void toggleText() {
    setState(() {
      showText = !showText;
    });
  }

  void _updateDateTime(DateTime selectedTime) {
    setState(() {
      _dateTime = selectedTime;
    });
    widget.onSearchRequested(_dateTime, _dateTime, selectedPeople);
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
            borderRadius: BorderRadius.circular(30),
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
                    const SizedBox(width: 5),
                    Text(
                      _dateFormat.format(_dateTime),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
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
                    const SizedBox(width: 10),
                    Text(
                      DateFormat.Hm().format(_dateTime),
                      style: const TextStyle(fontSize: 16),
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
            borderRadius: BorderRadius.circular(30),
          ),
          height: alturaCont,
          width: MediaQuery.of(context).size.width - ancho,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return PeoplePickerModal(
                            onPeopleSelected: handlePeopleSelected);
                      });
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/avatar.svg"),
                    const SizedBox(width: 8),
                    Text(
                      "$selectedPeople personas",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
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
            borderRadius: BorderRadius.circular(30),
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
                          overflow: TextOverflow.ellipsis,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Realiza la búsqueda cuando se presione el botón.
            widget.onSearchRequested(_dateTime, _dateTime, selectedPeople);
          },
          child: Container(
            margin: const EdgeInsets.only(top: 15, bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFFD390E),
              borderRadius: BorderRadius.circular(30),
            ),
            height: alturaCont - 10,
            width: MediaQuery.of(context).size.width - ancho * 5,
            child: const Center(
              child: Text(
                "¡Buscar Mesa!",
                style: TextStyle(color: Colors.white, fontSize: 20),
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
      widget.onSearchRequested(_dateTime, _dateTime, selectedPeople);
    }
  }
}
