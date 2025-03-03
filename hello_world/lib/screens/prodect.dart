import 'package:flutter/material.dart';
import 'package:hello_world/components/IconButton.dart';
import 'package:hello_world/components/RatingBox.dart';

import 'package:hello_world/models/storageOption.dart';

class ProdectPage extends StatelessWidget {
  const ProdectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 186, 182, 236),
        actions: [
          Iconbutton(Icons.favorite, Colors.red),
          const SizedBox(width: 15),
          Iconbutton(Icons.file_upload_outlined, Colors.black),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            color: const Color.fromARGB(255, 186, 182, 236),
            child: Image.asset('assets/images/mobile2-r.png'),
          ),
          ProductDetails(),
        ],
      ),
    );
  }

  Widget ProductDetails() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 380,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 25, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndSaleTag(),
              const SizedBox(height: 10),
              RatingsRow(),
              const SizedBox(height: 10),
              Description(),
              const SizedBox(height: 20),
              StorageOptions(),
              const SizedBox(height: 10),
              buildDivider(),
              const SizedBox(height: 12),
              PriceAndCartButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget TitleAndSaleTag() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'iPhone 16 Plus',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            children: [
              Icon(Icons.percent_sharp, color: Colors.white, size: 20),
              SizedBox(width: 5),
              Text('On Sale',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }

  Widget RatingsRow() {
    return Row(
      children: [
        RatingBox(Icons.star, Colors.orange, '4.8'),
        const SizedBox(width: 10),
        RatingBox(Icons.thumb_up, Colors.green, '94%'),
        const SizedBox(width: 10),
        const Text('117 reviews', style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget Description() {
    return const Text(
      'A18 Chip: Delivers 30% faster performance and improved power efficiency. Shutter Button: A new physical control for precise camera focus, zoom, and aperture adjustments.',
      style: TextStyle(fontSize: 14),
    );
  }

  Widget StorageOptions() {
    return Row(
      children: [
        StorageOption('1 TB', true),
        const SizedBox(width: 10),
        StorageOption('825 GB', false),
        const SizedBox(width: 10),
        StorageOption('512 GB', false),
      ],
    );
  }

  Widget buildDivider() {
    return const Divider(color: Colors.grey, thickness: 1);
  }

  Widget PriceAndCartButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('\$1300.00',
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey)),
            Text('\$1200.00',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: () {},
          child: const Text('Add to Cart',
              style: TextStyle(color: Colors.white, fontSize: 22)),
        ),
      ],
    );
  }
}
