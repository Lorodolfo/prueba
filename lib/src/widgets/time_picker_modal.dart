import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class TimePickerModal extends StatefulWidget {
  final Function(DateTime) onTimeSelected;

  TimePickerModal({required this.onTimeSelected});

  @override
  _TimePickerModalState createState() => _TimePickerModalState();
}

class _TimePickerModalState extends State<TimePickerModal> {
  late DateTime selectedTime;
  late List<DateTime> timeIntervals;

  @override
  void initState() {
    super.initState();
    selectedTime = DateTime.now();
    timeIntervals = generateTimeIntervals();
  }

  List<DateTime> generateTimeIntervals() {
    final List<DateTime> intervals = [];
    final DateTime baseTime =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

    for (int hour = 11; hour < 24; hour++) {
      for (int minute = 0; minute < 60; minute += 15) {
        intervals.add(baseTime.add(Duration(hours: hour, minutes: minute)));
      }
    }

    return intervals;
  }

  Future<void> _selectTime(BuildContext context) async {
    final DateTime? picked = await showDialog(
      context: context,
      builder: (BuildContext builder) {
        return Dialog(
          child: SizedBox(
            height: 400,
            width: 50,
            child: ListView.builder(
              itemCount: timeIntervals.length,
              itemBuilder: (BuildContext context, int index) {
                final time = timeIntervals[index];
                final isSelected = time == selectedTime;

                return ListTile(
                  title: Text(DateFormat.Hm().format(time)),
                  tileColor: isSelected ? Colors.blue : null,
                  onTap: () {
                    setState(() {
                      selectedTime = time;
                      widget.onTimeSelected(selectedTime);
                      // Actualizar el valor en el MySearch widget
                    });
                    Navigator.of(context).pop(
                        time); // Corregir la referencia a 'time' en lugar de 'picked'
                  },
                );
              },
            ),
          ),
        );
      },
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
        widget.onTimeSelected(
            selectedTime); // Actualizar el valor en el MySearch widget
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectTime(context);
      },
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 140),
        child: SizedBox(
          height: 400,
          width: 50,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: timeIntervals.length,
              itemBuilder: (BuildContext context, int index) {
                final time = timeIntervals[index];
                final isSelected = time == selectedTime;
                return GestureDetector(
                  child: ListTile(
                    title: Center(
                      child: Text(
                        DateFormat.Hm().format(time),
                      ),
                    ),
                    tileColor: isSelected ? Colors.blue : null,
                    onTap: () {
                      Navigator.of(context).pop(time);
                      setState(() {});
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
