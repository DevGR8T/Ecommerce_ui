import 'package:ecommerce_ui/pages/rootpage.dart';
import 'package:ecommerce_ui/widgets/cartwidget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
            'Cart',
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
            CartWidget(),
            Row(
              children: [
                Text(
                  'Select All',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Checkbox(
                  activeColor: Colors.pink[200],
                  value: true,
                  onChanged: (value) {},
                )
              ],
            ),
            SizedBox(height: 17),
            Row(
              children: [
                Text('Delivery Cost',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                Spacer(),
                Text('\$50.15',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.pink[200]))
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text('Total Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                Spacer(),
                Text('\$1800.54',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.pink[200]))
              ],
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                'Checkout',
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
