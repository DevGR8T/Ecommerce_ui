import 'package:ecommerce_ui/widgets/homewidget1.dart';
import 'package:ecommerce_ui/widgets/homewidget2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(17),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(5)),
                      width: 250,
                      height: 40,
                      child: TextField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Find your product',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 3, right: 20, left: 20, bottom: 25),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/friendship.jpg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20)),
              ),
              HomeWidget1(),
              HomeWidget2()
            ],
          ),
        ),
      ),
    );
  }
}
