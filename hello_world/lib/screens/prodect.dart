import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProdectPage extends StatelessWidget {
  const ProdectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 186, 182, 236),
          actions: [
            ClipOval(
                child: Container(
                    color: Colors.white,
                    width: 45,
                    height: 45,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ))),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ClipOval(
                  child: Container(
                      color: Colors.white,
                      width: 45,
                      height: 45,
                      child: Icon(Icons.file_upload_outlined))),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              color: Color.fromARGB(255, 186, 182, 236),
              child: Image.asset('assets/images/mobile2-r.png'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 370,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'iphone 16 Plus ',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.percent_sharp,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'On sale',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Row(
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              SizedBox(width: 5),
                              Text(
                                '4.8',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Row(
                            children: [
                              Icon(Icons.thumb_up,
                                  color: Colors.green, size: 20),
                              SizedBox(width: 5),
                              Text(
                                '94%',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '117 reviews',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    // وصف المنتج
                    const Text(
                      'A18 Chip: Delivers 30% faster performance and improved power efficiency. Shutter Button A new physical control for precise camera focus, zoom, and aperture adjustments.',
                      style: TextStyle(fontSize: 14),
                    ),

                    SizedBox(height: 20),
                    Row(
                      children: [
                        buildStorageOption('1 TB', true),
                        SizedBox(
                          width: 10,
                        ),
                        buildStorageOption('825 GB', false),
                        SizedBox(
                          width: 10,
                        ),
                        buildStorageOption('512 GB', false),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      height: 1,
                      width: double.infinity,
                      child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.grey)),
                    ),
                    SizedBox(
                      height: 12,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$1300.00',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '\$1200.00',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            ),
          ],
        ));
  }
}

Widget buildStorageOption(String label, bool isSelected) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
