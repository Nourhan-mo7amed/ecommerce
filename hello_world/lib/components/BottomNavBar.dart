import 'package:flutter/material.dart';

Widget BottomNavBar() {
  List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person
  ];
  List<String> labels = ['Home', 'Search', 'Favorite', 'Profile'];
  return BottomAppBar(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(icons.length, (index) {
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icons[index]),
              Text(labels[index]),
            ],
          ),
        );
      }),
    ),
  );
}
