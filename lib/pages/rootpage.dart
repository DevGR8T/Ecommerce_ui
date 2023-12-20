import 'package:ecommerce_ui/pages/cartpage.dart';
import 'package:ecommerce_ui/pages/favoritepage.dart';
import 'package:ecommerce_ui/pages/homepage.dart';
import 'package:ecommerce_ui/pages/profilepage.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selecteditem = 0;
  final List<Widget> pages = [
    HomePage(),
    CartPage(),
    FavoritePage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selecteditem],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.pink[200],
          unselectedItemColor: Colors.grey,
          currentIndex: selecteditem,
          onTap: (int tapped) {
            setState(() {
              selecteditem = tapped;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded), label: ''),
          ]),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        mini: true,
        backgroundColor: Colors.pink[200],
        onPressed: null,
        child: Icon(
          Icons.camera,
          color: Colors.white,
          size: 20,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
