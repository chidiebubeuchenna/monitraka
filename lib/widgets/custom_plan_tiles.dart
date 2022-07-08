import 'package:flutter/material.dart';
import 'package:monitraka/model/plan_model.dart';
import 'package:monitraka/res/res.dart';

class planTiles extends StatefulWidget {
  @override
  State<planTiles> createState() => _planTilesState();
}

class _planTilesState extends State<planTiles> {
  bool isChecked = false;

  List<Plan> plans = [
    Plan(name: 'Food'),
    Plan(name: 'Shopping'),
    Plan(name: 'Healthcare'),
    Plan(name: 'Bills and Fees'),
    Plan(name: 'Entertainment'),
    Plan(name: 'Travels'),
    Plan(name: 'Education'),
    Plan(name: 'Home'),
    Plan(name: 'Extra'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 46,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.03),
                  ),
                ],
              ),
              child: ListTile(
                title: Text(plans[index].name),
                trailing: Checkbox(
                  checkColor: Resources.color.cGreen,
                  fillColor:
                      MaterialStateProperty.resolveWith((_) => Colors.white),
                  side: MaterialStateBorderSide.resolveWith(
                    (_) => BorderSide(color: Resources.color.cGreen),
                  ),
                  value: plans[index].isDone,
                  onChanged: (val) {
                    setState(() {
                      plans[index].isDone = val!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 27),
          ],
        );
      },
      itemCount: plans.length,
    );
  }
}
