
  import 'package:flutter/material.dart';

Widget Iconbutton(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipOval(
        child: Container(
          color: Colors.white,
          width: 45,
          height: 45,
          child: Icon(icon, color: color),
        ),
      ),
    );
  }