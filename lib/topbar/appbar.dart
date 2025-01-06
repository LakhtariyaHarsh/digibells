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
    "Alibaba GGS Services ⮟": [
      "Alibaba-Account-Management",
      "Alibaba-Product-Listing-Services",
      "Alibaba-Global-Gold-Membership",
    ],
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
                                '/Ecommerce-Website-Designing'); // Replace with your About Us page widget
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
                      "Alibaba GGS Services ⮟",
                      "Account Management Services ⮟",
                    ])
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          for (var targetText in [
                            "Alibaba-Account-Management",
                            "Alibaba-Product-Listing-Services",
                            "Alibaba-Global-Gold-Membership",
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
                            context
                                .go('/calculator/${Uri.encodeComponent(value)}');
                          } else {
                            // Redirect to Commonfile
                            context.go('/${Uri.encodeComponent(value)}');
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
                            fontSize: deviceType == topbar.DeviceScreenType.tablet
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
                          onPressed: () {},
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
