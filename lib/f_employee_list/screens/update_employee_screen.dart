import 'package:company_employees/custom_widgets/custom_appbar.dart';

import 'package:flutter/material.dart';

import '../../custom_widgets/custom_datetime_picker.dart';
import '../../data/models/employee.dart';

class UpdateEmployee extends StatelessWidget {
   UpdateEmployee(this.employee, {super.key});
  final Employee employee;
  late TextEditingController nameController = TextEditingController(text:employee.name!);
  late TextEditingController lastNameController = TextEditingController(text:employee.lastName!);
  late TextEditingController sexController = TextEditingController(text:employee.sex!);
  late TextEditingController departmentController = TextEditingController(text:employee.department!);
  late TextEditingController contractTypeController = TextEditingController(text:employee.contractType!);
  late TextEditingController freeToUseDaysController = TextEditingController(text:employee.freeToUseDays!.toString());
  late TextEditingController vacationDaysController = TextEditingController(text:employee.vacationDays!.toString());
  late TextEditingController paidLeaveDaysController = TextEditingController(text:employee.paidLeaveDays!.toString());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Update ${employee.name!} ${employee.lastName!}'),
      body: SingleChildScrollView(
        child:  SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Expanded(
            child: Column(children: [
              Row(children: [
                const Text(
                  'Name: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: TextField(
                    controller: nameController,
                    cursorColor: Colors.black,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    'Last name: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: TextField(
                      controller: lastNameController,
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                  Expanded(
                    child: TextField(
                      controller: sexController,
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                  Expanded(
                    child: TextField(
                      controller: departmentController,
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                  Expanded(
                    child: TextField(
                      controller: contractTypeController,
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    'Date of birth: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  CustomDateTimePicker(),
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
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: freeToUseDaysController,
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: vacationDaysController,
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: paidLeaveDaysController,
                      cursorColor: Colors.black,
                      style: const TextStyle(
                        color: Colors.black,
                      ),  
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    'Contract type: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  CustomDateTimePicker()
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            ]),
          ),
        ),
      ),
      ),
    );
  }
}
