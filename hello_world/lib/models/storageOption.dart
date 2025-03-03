
  import 'package:flutter/material.dart';

Widget StorageOption(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        border: Border.all(
            color: isSelected ? Colors.green : Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold),
      ),
    );
  }