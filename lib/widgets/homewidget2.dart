import 'package:ecommerce_ui/pages/bagpage.dart';
import 'package:ecommerce_ui/pages/jacketpage.dart';
import 'package:ecommerce_ui/pages/pocketpantpage.dart';
import 'package:ecommerce_ui/pages/singletpage.dart';
import 'package:ecommerce_ui/pages/tshirtpage.dart';
import 'package:flutter/material.dart';

class HomeWidget2 extends StatefulWidget {
  const HomeWidget2({super.key});

  @override
  State<HomeWidget2> createState() => _HomeWidget2State();
}

class _HomeWidget2State extends State<HomeWidget2> {
  final List brands = [
    'images/jack2.png',
    'images/tshirt.png',
    'images/pant.png',
    'images/bag3.png',
    'images/singlet.png'
  ];

  final List brandnames = [
    'Warm Jacket',
    'Black T-shirt',
    'Pocket Pant',
    'Ladies Bag',
    'Men Singlet',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.73),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return index == 0
                      ? JacketPage()
                      : index == 1
                          ? TshirtPage()
                          : index == 2
                              ? PocketPantPage()
                              : index == 3
                                  ? BagPage()
                                  : SingletPage();
                },
              ));
            },
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '80% off',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10,
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              size: 10,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Image.asset(
                        brands[index],
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 2),
                      child: Text(
                        brandnames[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$600',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '\$3000',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
