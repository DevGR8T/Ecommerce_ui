import 'package:ecommerce_ui/pages/cartpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: size.height / 1.7,
              width: size.width,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ImageSlideshow(
                      indicatorBackgroundColor: Colors.white,
                      indicatorColor: Colors.red,
                      height: 50,
                      children: [
                        Image.asset(
                          'images/bag3.jpg',
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          'images/bag2.jpg',
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          'images/bag1.jpg',
                          fit: BoxFit.fill,
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black,
                              size: 17,
                            ),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Ladies Bag',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Spacer(),
                      Text(
                        '\$600.54',
                        style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: Text(
                      'For Women',
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold),
                    ),
                  ),
                  RatingBar.builder(
                    allowHalfRating: true,
                    direction: Axis.horizontal,
                    minRating: 1,
                    itemCount: 5,
                    maxRating: 3.5,
                    itemSize: 25,
                    itemPadding: EdgeInsets.symmetric(horizontal: 3),
                    itemBuilder: (context, index) {
                      return Icon(
                        Icons.star,
                        color: Colors.amber,
                      );
                    },
                    onRatingUpdate: (value) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Elevate Your Style with Our Exquisite Collection of Ladies\' Bags! Discover the perfect blend of elegance and functionality with our latest range of ladies\' bags. Whether you\'re a trendsetter or a classic enthusiast, our collection has something for every style.  Be the first to own our exclusive designs.',
                    strutStyle: StrutStyle(
                      height: 1.1,
                    ),
                    style: TextStyle(
                        color: Colors.grey[600], fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightBlue[50],
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.pink,
                          size: 20,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartPage(),
                            )),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
