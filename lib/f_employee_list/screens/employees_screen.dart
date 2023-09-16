import 'package:company_employees/custom_widgets/custom_appbar.dart';
import 'package:company_employees/custom_widgets/list_of_employees.dart';
import 'package:flutter/material.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("List of all employees"),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Expanded(
                  child: EmployeeList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}