import 'package:digibells/commonfile.dart';
import 'package:digibells/main.dart';
import 'package:digibells/redirectaboutus.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'topbarcontent.dart' as topbar;
import 'package:digibells/utills/constant.dart';

class AppbarforWeb extends StatefulWidget {
  const AppbarforWeb({super.key});

  @override
  State<AppbarforWeb> createState() => _AppbarforWebState();
}

class _AppbarforWebState extends State<AppbarforWeb> {
  OverlayEntry? _overlayEntry;

  final Map<String, List<String>> popupMenuData = {
    "Account Management Services ⮟": [
      "Amazon-Account-Management",
      "Flipkart-Account-Management",
      "Meesho-Account-Management",
      "eBAY-Account-Management",
      "Blinkit-Account-Management",
      "Walmart-Account-Management",
    ],
    "Calculator ⮟": [
      "Amazon-Seller-Fees-Calculator-India",
      "Flipkart-Seller-Fees-Calculator",
      "Jiomart-Seller-Fees-Calculator",
    ],
  };

  void redirectAboutUs() {
    context.go('/about');
  }

  void redirectHomepage() {
    // Navigate using GoRouter and pass the parameter
    context.go('/home');
  }

  void _showPaymentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            color: white,
            ),
            width: 600, // Adjust based on your UI needs
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "SCAN QR CODE",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(),
                const SizedBox(height: 20),
                SizedBox(
                  width: 400,
                  height: 400,
                  child: Image.asset("assets/QRcode.jpg")) ,
                // Done Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text(
                    "Done",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize); // Get the device type
    double horizontalPadding = screenSize.width * 0.02;

    return Container(
      color: orange,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: screenSize.width *
                    0.80, // Adjust width relative to screen size
                child: Wrap(
                  children: [
                    for (var text in [
                      "Home",
                      "About Us",
                      "Website Designing",
                    ])
                      GestureDetector(
                        onTap: () {
                          if (text == "About Us") {
                            redirectAboutUs();
                          } else if (text == "Home") {
                            redirectHomepage();
                          } else {
                            context.go(
                                '/websiteDesigning'); // Replace with your About Us page widget
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            text,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.tablet
                                      ? 14
                                      : 16,
                              fontWeight: FontWeight.bold,
                              color: white, // Fixed text color
                            ),
                          ),
                        ),
                      ),
                    for (var text1 in [
                      "Account Management Services ⮟",
                    ])
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          for (var targetText in [
                            "Amazon-Account-Management",
                            "Flipkart-Account-Management",
                            "Meesho-Account-Management",
                            "eBAY-Account-Management",
                            "Blinkit-Account-Management",
                            "Walmart-Account-Management",
                          ]) {
                            if (value == targetText) {
                              context.go('/${Uri.encodeComponent(targetText)}');
                              break;
                            }
                          }
                        },
                        itemBuilder: (_) => popupMenuData[text1]!
                            .map(
                              (item) => PopupMenuItem<String>(
                                value: item,
                                child: Text(item),
                              ),
                            )
                            .toList(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            text1,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.tablet
                                      ? 14
                                      : 16,
                              fontWeight: FontWeight.bold,
                              color: white, // Fixed text color
                            ),
                          ),
                        ),
                      ),

                    for (var text2 in ["Calculator ⮟"])
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          if (value == "Amazon-Seller-Fees-Calculator-India") {
                            // Redirect to Amazoncalcpage
                            context.go(
                                '/calculator/${Uri.encodeComponent(value)}');
                          } else if (value ==
                              "Flipkart-Seller-Fees-Calculator") {
                            // Redirect to Flipcartcalcpage
                            context.go(
                                '/Flipkartcalculator/${Uri.encodeComponent(value)}');
                          } else {
                            // Redirect to Commonfile
                            context.go(
                                '/Jiomartcalculator/${Uri.encodeComponent(value)}');
                          }
                        },
                        itemBuilder: (_) => popupMenuData[text2]!
                            .map(
                              (item) => PopupMenuItem<String>(
                                value: item,
                                child: Text(item),
                              ),
                            )
                            .toList(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            text2,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.tablet
                                      ? 14
                                      : 16,
                              fontWeight: FontWeight.bold,
                              color: white, // Fixed text color
                            ),
                          ),
                        ),
                      ),

                    // Contact Us
                    GestureDetector(
                      onTap: () {
                        context.go('/Contact-Us'); // Pass the parameter
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Contact Us",
                          style: TextStyle(
                            fontSize:
                                deviceType == topbar.DeviceScreenType.tablet
                                    ? 14
                                    : 16,
                            fontWeight: FontWeight.bold,
                            color: white, // Fixed text color
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Pay Button
              if (deviceType != topbar.DeviceScreenType.mobile)
                Padding(
                  padding: EdgeInsets.only(
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.02),
                        child: ElevatedButton(
                          onPressed: _showPaymentDialog,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(
                              screenSize.width * 0.1,
                              screenSize.height * 0.05,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: Text(
                            "Pay Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                          height: 25,
                          width: 80,
                          child: Image.asset("assets/payimage.png"))
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
