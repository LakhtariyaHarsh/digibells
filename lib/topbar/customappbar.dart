import 'package:digibells/commonfile.dart';
import 'package:digibells/main.dart';
import 'package:digibells/redirectaboutus.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'topbarcontent.dart' as topbar;

class CustomDrawer extends StatelessWidget {
  final Map<String, List<String>> popupMenuData = {
    "Alibaba GGS Services": [
      "Alibaba Account Management",
      "Alibaba Product Listing Services",
      "Alibaba Global Gold Membership",
    ],
    "Account Management Services": [
      "Amazon Account Management",
      "Flipkart Account Management",
      "Meesho Account Management",
      "eBAY Account Management",
      "Blinkit Account Management",
      "Walmart Account Management",
    ],
    "Calculator": [
      "Amazon Seller Fees Calculator India",
      "Flipkart Seller Fees Calculator",
      "Jiomart Seller Fees Calculator",
    ],
  };

  void navigateTo(BuildContext context, String routeName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Commonfile(name: routeName),
      ),
    );
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
              GoRouter.of(context).push('/');
            },
          ),
          ListTile(
            title: Text('About Us'),
            onTap: () {
              // Navigate using GoRouter and pass the parameter
              GoRouter.of(context).push('/about');
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
               GoRouter.of(context).push('/Contact-Us');
            },
          ),
          buildPopupMenu(context, "Alibaba GGS Services"),
          buildPopupMenu(context, "Account Management Services"),
          buildPopupMenu(context, "Calculator"),
        ],
      ),
    );
  }
}
