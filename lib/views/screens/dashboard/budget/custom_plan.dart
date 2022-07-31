import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/widgets/custom_plan_tiles.dart';
import 'package:monitraka/widgets/text_field.dart';

class CustomPlan extends StatefulWidget {
  static const id = '/CustomPlan';
  const CustomPlan({Key? key}) : super(key: key);

  @override
  State<CustomPlan> createState() => _CustomPlanState();
}

class _CustomPlanState extends State<CustomPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Done',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Resources.color.cGreen),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Custom Plans',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Resources.color.cGreen),
                    ),
                    Text(
                      'Our custom plans are made to\n'
                      'suit your budgeting needs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Resources.color.headerText),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Select what you are budgeting for',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.cGreen),
              ),
              const SizedBox(height: 20),
              const SpecialField(hint: 'Search', icon: Icon(Icons.search)),
              const SizedBox(height: 20),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.63,
                  child: const PlanTiles())
            ],
          ),
        ),
      ),
    );
  }
}
