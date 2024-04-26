// import 'package:flutter/material.dart';
//
// class SelectDateProvider with ChangeNotifier{
//
//   late DateTime _selectedDate;
//
//   get selectedDate => _selectedDate;
//
//   Future<void> selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2100),
//     );
//     if (picked != null && picked != _selectedDate) {
//         _selectedDate = picked;
//     }
//   }
// }