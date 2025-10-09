import 'package:flutter/material.dart';

class DrawerModel {
  final String title;
  final Icon prefixIcon;
  final Icon? suffixIcon;

  DrawerModel({required this.title, required this.prefixIcon, this.suffixIcon});
}
