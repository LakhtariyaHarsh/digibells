import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

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
      context.go('/calculator/${Uri.encodeComponent(routeName)}');
    } else if (routeName == "Flipkart-Seller-Fees-Calculator") {
      // Redirect to Flipcartcalcpage
      context.go('/Flipkartcalculator/${Uri.encodeComponent(routeName)}');
    } else {
      // Redirect to Commonfile
      context.go('/Jiomartcalculator/${Uri.encodeComponent(routeName)}');
    }
  }

  Widget buildPopupMenu(
      BuildContext context, String title, IconData leadingIcon) {
    if (!popupMenuData.containsKey(title)) return SizedBox.shrink();
    return ExpansionTile(
      leading: Icon(leadingIcon), // Use the dynamically passed icon
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
    var time = DateTime.now();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 200,
            child: DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 245,
                      246), // Set background color for DrawerHeader
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: black,
                        radius: 40,
                        backgroundImage: AssetImage("assets/logo.png"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "DIGITAL SPARK TEAM",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 20),
                          ),
                          Text(
                            DateFormat('dd-MMM-yyyy').format(time),
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              context.go('/home');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.contact_support_rounded),
            title: Text('About Us'),
            onTap: () {
              // Navigate using GoRouter and pass the parameter
              context.go('/about');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('Website Designing'),
            onTap: () {
              // Navigate using GoRouter and pass the parameter
              context.go('/websiteDesigning');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.quick_contacts_dialer_sharp),
            title: Text('Contact Us'),
            onTap: () {
              context.go('/Contact-Us');
            },
          ),
          Divider(),
          buildPopupMenu(context, "Account Management Services",
              Icons.manage_accounts_rounded),
          Divider(),
          buildPopupMenu(context, "Calculator", Icons.calculate),
          Divider(),
        ],
      ),
    );
  }
}
