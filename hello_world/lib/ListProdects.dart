import 'package:flutter/material.dart';
import 'package:hello_world/screens/prodect.dart';

class RecentProdects extends StatelessWidget {
  final List prodect = [
    {
      'imageUrl': 'assets/images/airpods-re.png',
      'name': 'AirPods',
      'price': '132.00',
      'rating': '4.9',
    },
    {
      'imageUrl': 'assets/images/laptop-re.png',
      'name': 'MacBook ',
      'price': '100.000',
      'rating': '5.0',
    },
    {
      'imageUrl': 'assets/images/laptopHP-re.png',
      'name': 'laptop',
      'price': '30.000',
      'rating': '4.8',
    },
    {
      'imageUrl': 'assets/images/mobile-re.png',
      'name': 'iPhone 14',
      'price': '15.000',
      'rating': '4.7',
    },
    {
      'imageUrl': 'assets/images/mobile2-r.png',
      'name': 'iPhone 16',
      'price': '13.000',
      'rating': '4.7',
    },
    {
      'imageUrl': 'assets/images/headphone2-re.png',
      'name': 'head phone 14',
      'price': '1.000',
      'rating': '4.7',
    }
  ];

  RecentProdects({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: prodect.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.70),
        itemBuilder: (BuildContext context, i) {
          return single_prod(
              name: prodect[i]['name'],
              imageUrl: prodect[i]['imageUrl'],
              price: prodect[i]['price'],
              rating: prodect[i]['rating']);
        });
  }
}

// ignore: camel_case_types
class single_prod extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String rating;

  const single_prod({
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
            height: 180,
            width: 170,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 181, 206, 224),
                borderRadius: BorderRadius.circular(30)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
              title: Text(name),
              subtitle: Text('\$${price}'),
              trailing: SizedBox(
                width: 50,
                child: Row(children: [
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  Text('${rating}')
                ]),
              )),
        ],
      ),
    );
  }
}
