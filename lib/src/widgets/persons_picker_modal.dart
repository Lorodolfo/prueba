import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class PeoplePickerModal extends StatefulWidget {
  final Function(int) onPeopleSelected;

  PeoplePickerModal({required this.onPeopleSelected});

  @override
  _PeoplePickerModalState createState() => _PeoplePickerModalState();
}

class _PeoplePickerModalState extends State<PeoplePickerModal> {
  late int selectedPeople;
  late List<int> peopleOptions;

  @override
  void initState() {
    super.initState();
    selectedPeople = 2;
    peopleOptions = generatePeopleOptions();
  }

  List<int> generatePeopleOptions() {
    final List<int> options = [];
    for (int i = 2; i <= 14; i++) {
      options.add(i);
    }
    return options;
  }

  Future<void> _selectPeople(BuildContext context) async {
    final int? picked = await showDialog(
      context: context,
      builder: (BuildContext builder) {
        return Dialog(
          child: SizedBox(
            height: 400,
            width: 50,
            child: ListView.builder(
              itemCount: peopleOptions.length,
              itemBuilder: (BuildContext context, int index) {
                final people = peopleOptions[index];
                final isSelected = people == selectedPeople;

                return ListTile(
                  title: Text(people.toString()),
                  tileColor: isSelected ? Colors.blue : null,
                  onTap: () {
                    setState(() {
                      selectedPeople = people;
                      widget.onPeopleSelected(selectedPeople);
                    });
                    Navigator.of(context).pop(people);
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
        selectedPeople = picked;
        widget.onPeopleSelected(selectedPeople);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectPeople(context);
      },
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 140),
        child: SizedBox(
          height: 400,
          width: 50,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: peopleOptions.length,
              itemBuilder: (BuildContext context, int index) {
                final people = peopleOptions[index];
                final isSelected = people == selectedPeople;
                return GestureDetector(
                  child: ListTile(
                    title: Center(
                      child: Text(
                        people.toString(),
                      ),
                    ),
                    tileColor: isSelected ? const Color(0xFFFD390E) : null,
                    onTap: () {
                      widget.onPeopleSelected(people);
                      Navigator.of(context).pop();
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
