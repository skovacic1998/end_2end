import 'package:company_employees/custom_widgets/custom_appbar.dart';

import 'package:flutter/material.dart';

import '../../custom_widgets/custom_card.dart';
import '../../data/models/employee.dart';

class EmployeeDetails extends StatelessWidget {
  const EmployeeDetails(this.employee, {super.key});
  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Employee Details for ${employee.name!} ${employee.lastName!}'),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                CustomCardForEmployee(employee),
              ],
            ),
          ),
        ),
      ),
    );
  }
}