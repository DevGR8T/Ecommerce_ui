import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({super.key});

  final List details = [
    'Edit Profile',
    'Shopping Address',
    'Wishlist',
    'Order History',
    'Notification',
    'Cards'
  ];

  final List<IconData> profileicons = [
    Icons.person,
    Icons.location_on_rounded,
    Icons.favorite,
    Icons.history_edu,
    Icons.notifications,
    Icons.credit_card_sharp
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        padding: EdgeInsets.only(
          right: 10,
          left: 20,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              children: [
                Icon(
                  profileicons[index],
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  details[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      fontFamily: 'serif'),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
