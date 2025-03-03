import 'package:flutter/material.dart';
import 'package:hello_world/components/IconButton.dart';

AppBar Appbar() {
  return AppBar(
    title: const Text(
      'Discover',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    actions: [
      Iconbutton(Icons.shopping_bag_outlined, Colors.black),
    ],
  );
}
