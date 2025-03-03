import 'package:flutter/material.dart';
import 'package:hello_world/ListProdects.dart';
import 'package:hello_world/components/Appbar.dart';
import 'package:hello_world/components/BottomNavBar.dart';
import 'package:hello_world/components/SearchField.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: ListView(
        children: [
          SearchField(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/removebg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                Text(
                  'See All',
                  style: TextStyle(
                      color: Color.fromARGB(255, 89, 216, 93),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          CategoriesList(), 
          SizedBox(height: 380, child: RecentProdects()),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}




class CategoriesList extends StatefulWidget {
  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  List<String> categories = ['All', 'Smart phones', 'Headphones', 'Laptop'];
  String selectedCategory = 'All'; 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = category; 
              });
            },
            child: CategoryItem(category, selectedCategory),
          );
        }).toList(),
      ),
    );
  }
}


Widget CategoryItem(String title, String selectedCategory) {
  bool isSelected = title == selectedCategory;
  return Container(
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    decoration: BoxDecoration(
      color: isSelected ? Colors.green : Colors.transparent,
      border: isSelected ? null : Border.all(color: Colors.black, width: 2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      title,
      style: TextStyle(
          fontSize: 18, color: isSelected ? Colors.white : Colors.black),
    ),
  );
}
