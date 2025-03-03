
import 'package:flutter/material.dart';

Widget SearchField() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        hintText: 'Search',
        hintStyle: const TextStyle(color: Color.fromARGB(255, 157, 159, 159)),
        suffixIcon: const Icon(Icons.search),
      ),
    ),
  );
}