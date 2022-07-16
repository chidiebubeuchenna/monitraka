import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class PlanTiles extends StatefulWidget {
  const PlanTiles({Key? key}) : super(key: key);

  @override
  State<PlanTiles> createState() => _PlanTilesState();
}

class _PlanTilesState extends State<PlanTiles> {
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
                color: Resources.color.cWhite,
                boxShadow: const [
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
                    (_) => BorderSide(color: Resources.color.cGreen, width: 3),
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
            const SizedBox(height: 27),
          ],
        );
      },
      itemCount: plans.length,
    );
  }
}

class Plan {
  final String name;
  bool isDone;

  Plan({required this.name, this.isDone = false});
}
