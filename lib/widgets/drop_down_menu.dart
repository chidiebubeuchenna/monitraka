import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  bool isClicked = false;
  final List<String> _items = [
    'WhatsApp',
    'Twitter',
    'Instagram',
    'A friend',
    'Our team'
  ];

  options() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 374),
      height: 200,
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_items[index]),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('How did you hear about us? ',
                style: TextStyle(
                    color: Resources.color.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 14)),
            Text(
              '(Optional)',
              style: TextStyle(
                  color: Resources.color.redText,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            )
          ],
        ),
        const SizedBox(height: 15),
        Container(
          constraints: const BoxConstraints(maxWidth: 374),
          height: 50,
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: Resources.color.fillColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select',
                style: TextStyle(
                    color: Resources.color.hintText,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isClicked = true;
                      options();
                    });
                  },
                  icon: Icon(Icons.keyboard_arrow_down,
                      color: Resources.color.hintText),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
