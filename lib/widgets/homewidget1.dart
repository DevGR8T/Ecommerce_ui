import 'package:flutter/material.dart';

class HomeWidget1 extends StatefulWidget {
  const HomeWidget1({super.key});

  @override
  State<HomeWidget1> createState() => _HomeWidget1State();
}

class _HomeWidget1State extends State<HomeWidget1> {
  int activetab = 0;

  final List clothes = [
    'All',
    'Best Selling',
    'Jackets',
    'Shirts',
    'Pants',
    'Bags'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
        itemCount: clothes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 5,
            width: index == 0 ? 45 : 80,
            decoration: BoxDecoration(
                color: activetab == index ? Colors.pink[400] : Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activetab = index;
                });
              },
              child: Text(
                clothes[index],
                style: TextStyle(
                    color: activetab == index ? Colors.white : Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
            ),
          );
        },
      ),
    );
  }
}
