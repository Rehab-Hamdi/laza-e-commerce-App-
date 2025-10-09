import 'package:flutter/material.dart';

Widget customButton({label, backgroundColor, function}) {
  return ElevatedButton(
    onPressed: function,
    style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  );
}
