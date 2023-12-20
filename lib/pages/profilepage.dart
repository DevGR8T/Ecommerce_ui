import 'package:ecommerce_ui/pages/rootpage.dart';
import 'package:ecommerce_ui/widgets/profilewidget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RootPage(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text(
            'Profile',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'serif'),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/pic5.jpg'),
              radius: 70,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'Carlene Peterson',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Serif'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 3,
              ),
              Text(
                ' Active Status',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(height: 70),
          ProfileWidget()
        ],
      ),
    );
  }
}
