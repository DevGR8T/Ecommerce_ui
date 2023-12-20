import 'package:ecommerce_ui/pages/rootpage.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/widgets/favoritewidget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return RootPage();
              },
            ));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 17,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            'Favorites',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            FavoriteWidget(),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 80, right: 80, top: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Add To Cart',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
