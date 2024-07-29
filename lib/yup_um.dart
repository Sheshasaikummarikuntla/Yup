library yup_um;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yup_um/file.dart';

/// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

openfile(context) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => const Plug()));
}

checkopentimes() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  int openTimes = sharedPreferences.getInt('openTimes') ?? 0;
  return openTimes;
}

setopentimes(context) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var data = checkopentimes();
  if (data == null) {
    sharedPreferences.setInt('openTimes', 1);
    openfile(context);
  } else {
    sharedPreferences.setInt('openTimes', data + 1);
    openfile(context);
  }
}
