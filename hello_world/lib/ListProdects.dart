import 'package:flutter/material.dart';
import 'package:hello_world/screens/prodect.dart';

class RecentProdects extends StatelessWidget {
  final List<Map<String, String>> prodect = [
    {
      'imageUrl': 'assets/images/airpods-re.png',
      'name': 'AirPods',
      'price': '132.00',
      'rating': '4.9',
    },
    {
      'imageUrl': 'assets/images/laptop-re.png',
      'name': 'MacBook',
      'price': '100000',
      'rating': '5.0',
    },
    {
      'imageUrl': 'assets/images/laptopHP-re.png',
      'name': 'Laptop',
      'price': '30000',
      'rating': '4.8',
    },
    {
      'imageUrl': 'assets/images/mobile-re.png',
      'name': 'iPhone 14',
      'price': '15000',
      'rating': '4.7',
    },
    {
      'imageUrl': 'assets/images/mobile2-r.png',
      'name': 'iPhone 16',
      'price': '13000',
      'rating': '4.7',
    },
    {
      'imageUrl': 'assets/images/headphone2-re.png',
      'name': 'Headphone',
      'price': '1000',
      'rating': '4.7',
    }
  ];

  RecentProdects({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: prodect.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (BuildContext context, int i) {
          return SingleProd(
            name: prodect[i]['name']!,
            imageUrl: prodect[i]['imageUrl']!,
            price: prodect[i]['price']!,
            rating: prodect[i]['rating']!,
          );
        },
      ),
    );
  }
}

class SingleProd extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String rating;

  const SingleProd({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return const ProdectPage();
          }),
        );
      },
      child: Column(
        children: [
          Container(
            height: 190,
            width: 165,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 181, 206, 224),
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            title:
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('\$${double.parse(price).toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 16),
                Text(rating),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
