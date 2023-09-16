class Employee{

  const Employee({
    this.uid,
    this.name,
    this.lastName,
    this.image, 
    this.sex,
    this.department,
    this.contractType,
    this.dateOfBirth,
    this.freeToUseDays,
    this.paidLeaveDays,
    this.vacationDays,
    this.workStartDate
  });

  final String? uid;
  final String? name;
  final String? lastName;
  final String? image;
  final String? sex;
  final String? department;
  final String? contractType;
  final DateTime? dateOfBirth;
  final int? freeToUseDays;
  final int? paidLeaveDays;
  final int? vacationDays;
  final DateTime? workStartDate;

  Map<String, dynamic> getMap() => {
    'uid': uid,
    'name': name,
    'surname': lastName,
    'sex': sex,
    'image': image,
    'department': department,
    'contractType': contractType,
    'dateOfBirth': dateOfBirth,
    'freeToUseDays': freeToUseDays,
    'paidLeaveDays': paidLeaveDays,
    'vacationDays': vacationDays,
    'workStartDate': workStartDate
  };
}