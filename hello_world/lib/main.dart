import 'package:flutter/material.dart';
import 'package:hello_world/ListProdects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Discover',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                  // color: const Color.fromARGB(255, 120, 101, 101),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey, width: 1.5),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Icon(Icons.shopping_bag_outlined)),
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    hintText: 'Search',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 157, 159, 159)),
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/removebg.png',
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 72, 203, 77),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'All',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Smart phones',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Headphones',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Laptop',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                      margin: EdgeInsets.all(5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'all',
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            ),
            Container(height: 400, child: RecentProdects()),
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Color.fromARGB(255, 241, 241, 241),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home),
                    Text(
                      'Home',
                    ),
                  ],
                ),
              ),
              // Search Icon with Text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.search),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              // Favorite Icon with Text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite),
                    Text(
                      'Favorite',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person),
                    Text(
                      'Profile',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
