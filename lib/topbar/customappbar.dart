import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  final Map<String, List<String>> popupMenuData = {
    "Account Management Services": [
      "Amazon-Account-Management",
      "Flipkart-Account-Management",
      "Meesho-Account-Management",
      "eBAY-Account-Management",
      "Blinkit-Account-Management",
      "Walmart-Account-Management",
    ],
    "Calculator": [
      "Amazon-Seller-Fees-Calculator-India",
      "Flipkart-Seller-Fees-Calculator",
      "Jiomart-Seller-Fees-Calculator",
    ],
  };

  void navigateTo(BuildContext context, String routeName) {
    if (routeName == "Amazon-Seller-Fees-Calculator-India") {
                            // Redirect to Amazoncalcpage
                            context
                                .go('/calculator/${Uri.encodeComponent(routeName)}');
                          } else {
                            // Redirect to Commonfile
                            context.go('/${Uri.encodeComponent(routeName)}');
                          }
  }

  Widget buildPopupMenu(BuildContext context, String title) {
    if (!popupMenuData.containsKey(title)) return SizedBox.shrink();
    return ExpansionTile(
      title: Text(title),
      children: popupMenuData[title]!
          .map(
            (item) => ListTile(
              title: Text(item),
              onTap: () {
                navigateTo(context, item);
              },
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: orange),
            child: Text(
              'DigiBells Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              context.go('/home');
            },
          ),
          ListTile(
            title: Text('About Us'),
            onTap: () {
              // Navigate using GoRouter and pass the parameter
              context.go('/about');
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              context.go('/Contact-Us');
            },
          ),
          buildPopupMenu(context, "Account Management Services"),
          buildPopupMenu(context, "Calculator"),
        ],
      ),
    );
  }
}
