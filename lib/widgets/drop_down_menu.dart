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

  // List<DropdownMenuItem<int>> get dropdownItems {
  //   List<DropdownMenuItem<int>> menuItems = [
  //     DropdownMenuItem(value: 1, child: item(1, 1, 'WhatsApp')),
  //     DropdownMenuItem(value: 2, child: item(2, 2, 'Twitter')),
  //     DropdownMenuItem(value: 3, child: item(3, 3, 'Instagram')),
  //     DropdownMenuItem(value: 4, child: item(4, 4, 'A friend')),
  //     DropdownMenuItem(value: 5, child: item(5, 5, 'Our team')),
  //   ];
  //   return menuItems;
  // }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"), value: "USA"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }

  form() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 100, maxHeight: 200),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Resources.color.cGreen),
            borderRadius: BorderRadius.circular(12),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Resources.color.fillColor,
        ),
        items: dropdownItems,
        onChanged: (x) {},
      ),
    );
  }

  button() {
    return DropdownButton(
        value: 1,
        dropdownColor: Colors.green,
        onChanged: null,
        items: dropdownItems);
  }

  item(int value, int groupValue, String title) {
    return RadioListTile(
      value: value,
      groupValue: groupValue,
      onChanged: (int? value) {
        print('From: $title');
        // selectedTile(xfi);
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
    return demo();
  }
}

RadioListTile demo() {
  return RadioListTile(
    value: 1,
    groupValue: 1,
    onChanged: (index) {
      // setState(() {
      //   selectedRadioTile
      // });
    },
    title: Text('WhatsApp'),
  );
}
