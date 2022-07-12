import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/widgets/custom_plan_tiles.dart';

class customPlan extends StatefulWidget {
  const customPlan({Key? key}) : super(key: key);

  @override
  State<customPlan> createState() => _customPlanState();
}

class _customPlanState extends State<customPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 252, 250, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      'Our custom plans are made to',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'suit your budgetting needs',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Select what you are budgetting for',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.cGreen),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: planTiles()),
            ],
          ),
        ),
      ),
    );
  }
}
