import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/dashboard/budget/custom_plan.dart';

class Budget extends StatefulWidget {
  const Budget({Key? key}) : super(key: key);

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Budgets',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Resources.color.cBlack),
                  ),
                  Text(
                    'Add a budget plan',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Resources.color.headerText),
                  ),
                ],
              ),
              Center(child: Image.asset(Resources.iStrings.moneyStairs)),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, CustomPlan.id);
                    },
                    child: Container(
                      height: 146,
                      width: 148,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(8)),
                        color: Resources.color.cPink,
                        boxShadow: const [
                          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08)),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.event_note_outlined,
                              color: Color(0xffFF0083)),
                          const Text(
                            'Custom plans',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFF0083),
                            ),
                          ),
                          Text(
                            'We have already made templates designed to suit your needs',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Resources.color.headerText),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 146,
                    width: 148,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(4),
                          bottomRight: Radius.circular(8)),
                      color: Resources.color.cBlue,
                      boxShadow: const [
                        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08)),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.folder_special_outlined,
                            color: Color(0xff5D5FEF)),
                        const Text(
                          'Create my plan',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D5FEF),
                          ),
                        ),
                        Text(
                          'Create a plan that can work for you.We got you!',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Resources.color.headerText),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.info_outline, color: Colors.blue),
                  Text(
                    ' Budgets you create will be added here.',
                    style: TextStyle(
                        color: Resources.color.headerText,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
