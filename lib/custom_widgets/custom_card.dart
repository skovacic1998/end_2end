import 'package:company_employees/data/models/employee.dart';
import 'package:flutter/material.dart';

class CustomCardForEmployee extends StatelessWidget {
  const CustomCardForEmployee(this.employee, {super.key});
  final Employee employee;
  @override
  Widget build(BuildContext context) {
    return Card (
      child: Column(children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
	          shape: BoxShape.circle,
	          image: DecorationImage(
	            image: NetworkImage(employee.image!),
	            fit: BoxFit.fill
	          ),
          ),
        ),


        Row(
          children: [
            const Text(
              'Name: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(employee.name!),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Last name: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(employee.lastName!)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Sex: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(employee.sex!)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Department: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(employee.department!)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Contract type: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(employee.contractType!)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Date of birth: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('${employee.dateOfBirth!.year}/${employee.dateOfBirth!.month}/${employee.dateOfBirth!.day}'),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Free to use days: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(employee.freeToUseDays!.toString())
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Vacation days: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(employee.vacationDays!.toString())
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Paid leave days: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(employee.paidLeaveDays!.toString())
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Contract type: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('${employee.workStartDate!.year}/${employee.workStartDate!.month}/${employee.workStartDate!.day}'),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ]),
    );
  }
}
