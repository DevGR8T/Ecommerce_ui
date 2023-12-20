import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  CartWidget({super.key});

  final List clothesgenres = [
    'Warm Jacket',
    'Men Singlet',
    'Ladies Bag',
  ];

  final List clothesimages = [
    'images/jack2.jpg',
    'images/singlet3.jpg',
    'images/bag3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                value: (true),
                onChanged: (value) {},
                activeColor: Colors.pink[200],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 50),
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(clothesimages[index]),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(8)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          clothesgenres[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(width: 89),
                        Icon(
                          Icons.delete,
                          color: Colors.pink[200],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        'Best Selling',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$600.54',
                          style: TextStyle(
                              color: Colors.pink[200],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey[100],
                              child: Text('-',
                                  style: TextStyle(
                                    color: Colors.pink[200],
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Text(
                                '01',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey[100],
                              child: Text('+',
                                  style: TextStyle(
                                    color: Colors.pink[200],
                                  )),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
