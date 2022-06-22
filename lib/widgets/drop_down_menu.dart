import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  late int selectedRadio;
  late int selectedRadioTile;
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "USA", child: Text("USA")),
      const DropdownMenuItem(value: "Canada", child: Text("Canada")),
      const DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
      const DropdownMenuItem(value: "England", child: Text("England")),
    ];
    return menuItems;
  }

  RadioListTile item(int value, int groupValue, String title) {
    return RadioListTile(
      value: value,
      groupValue: groupValue,
      onChanged: (x) {
        print('From: $title');
        selectedTile(x);
      },
      title: Text(
        title,
        style: TextStyle(
            color: Resources.color.hintText,
            fontWeight: FontWeight.w500,
            fontSize: 16),
      ),
    );
  }

  selectedTile(int val) {
    setState(() {
      selectedRadio = val;
      selectedRadioTile = val;
    });
  }

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(items: dropdownItems, onChanged: (x) {});
  }
}
