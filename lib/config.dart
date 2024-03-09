import 'package:flutter/material.dart';

checkDevice(context) {
  double swidth = MediaQuery.of(context).size.width;
  if (swidth > 700) {
    return "des";
  } else if (swidth < 700 && swidth > 444) {
    return "tab";
  } else {
    return "mob";
  }
}
