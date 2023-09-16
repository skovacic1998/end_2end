

import 'package:company_employees/data/models/employee.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../f_employee_list/screens/employee_details_screen.dart';
import '../f_employee_list/screens/update_employee_screen.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('employees').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final employees = snapshot.data?.docs;
        if (employees == null || employees.isEmpty) {
          return const Text('No employees found.');
        }
        final employeeList = employees.map((doc) {
          final data = doc.data() as Map<String, dynamic>;
          return Employee(
            uid: data['uid'],
            name: data['name'],
            lastName: data['lastName'],
            sex: data['sex'],
            image: data['image'],
            department: data['department'],
            contractType: data['contractType'],
            dateOfBirth: data['dateOfBirth']?.toDate(), // Convert Timestamp to DateTime
            freeToUseDays: data['freeToUseDays'],
            paidLeaveDays: data['paidLeaveDays'],
            vacationDays: data['vacationDays'],
            workStartDate: data['workStartDate']?.toDate(), // Convert Timestamp to DateTime
          );
        }).toList();
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: employees.length,
            itemBuilder: (context, index) {
              final Employee employee = employeeList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EmployeeDetails(employee),
                    ),
                  ); 
                },
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            UpdateEmployee(employee),
                    ),
                  ); 
                },
            child: ListTile(title: Text('${employee.name!} ${employee.lastName!}'))
          );
            },
          ),
        );
      },
    );
  }
}
