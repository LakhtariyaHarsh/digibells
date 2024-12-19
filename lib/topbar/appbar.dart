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
  String? hoveredText; // Track currently hovered text
  OverlayEntry? _overlayEntry;

  final Map<String, List<String>> popupMenuData = {
    "Alibaba GGS Services ⮟": [
      "Alibaba Account Management",
      "Alibaba Product Listing Services",
      "Alibaba Global Gold Membership",
    ],
    "Account Management Services ⮟": [
      "Amazon Account Management",
      "Flipkart Account Management",
      "Meesho Account Management",
      "eBAY Account Management",
      "Blinkit Account Management",
      "Walmart Account Management",
    ],
    "Calculator ⮟": [
      "Amazon Seller Fees Calculator India",
      "Flipkart Seller Fees Calculator",
      "Jiomart Seller Fees Calculator",
    ],
  };

// Builds the popup menu with items from the data
  List<PopupMenuEntry<String>> buildPopupMenu(String text) {
    if (!popupMenuData.containsKey(text)) return [];
    return popupMenuData[text]!
        .map(
          (item) => PopupMenuItem<String>(
            value: item,
            child: Text(item),
          ),
        )
        .toList();
  }

  void showPopup(BuildContext context, String text, Offset position) {
    if (!popupMenuData.containsKey(text)) return;

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: position.dy + 10,
        left: position.dx,
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.all(10),
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: popupMenuData[text]!
                  .map(
                    (item) => GestureDetector(
                      onTap: () {
                        debugPrint('Selected: $item');
                        hidePopup();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  // Function to hide the popup
  void hidePopup() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  // Builds a static ListTile with a title
  Widget _buildStaticTile(String title) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
        ),
        Divider(),
      ],
    );
  }

  void redirectAboutUs() {
    context.go('/about');
  }

  void redirectHomepage() {
    // Navigate using GoRouter and pass the parameter
    GoRouter.of(context).push('/');
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: screenSize.width *
                  0.75, // Adjust width relative to screen size
              // height: 100,
              child: Wrap(
                // Align items to start
                children: [
                  for (var text in [
                    "Home",
                    "About Us",
                    "Website Designing",
                  ])
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          hoveredText = text;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          hoveredText = null;
                        });
                      },
                      child: GestureDetector(
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
                              color: hoveredText == text ? black : white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  for (var text1 in [
                    "Alibaba GGS Services ⮟",
                    "Account Management Services ⮟",
                    "Calculator ⮟",
                  ])
                    MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            hoveredText = text1;
                          });
                          showPopup(context, text1, event.position);
                        },
                        onExit: (_) {
                          setState(() {
                            hoveredText = null;
                            hidePopup();
                          });
                        },
                        child: PopupMenuButton<String>(
                          onSelected: (value) {
                            for (var targetText in [
                              "Alibaba Account Management",
                              "Alibaba Product Listing Services",
                              "Alibaba Global Gold Membership",
                              "Amazon Account Management",
                              "Flipkart Account Management",
                              "Meesho Account Management",
                              "eBAY Account Management",
                              "Blinkit Account Management",
                              "Walmart Account Management",
                              "Amazon Seller Fees Calculator India",
                              "Flipkart Seller Fees Calculator",
                              "Jiomart Seller Fees Calculator",
                            ]) {
                              if (value == targetText) {
                                context
                                    .go('/${Uri.encodeComponent(targetText)}');
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              text1,
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.tablet
                                        ? 14
                                        : 16,
                                fontWeight: FontWeight.bold,
                                color: hoveredText == text1 ? black : white,
                              ),
                            ),
                          ),
                        )),
                  // Contact Us
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        hoveredText = "Contact Us";
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        hoveredText = null;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        context.go('/Contect Us'); // Pass the parameter
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
                            color: hoveredText == "Contact Us" ? black : white,
                          ),
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
                  right: deviceType == topbar.DeviceScreenType.tablet
                      ? screenSize.width * 0.05
                      : screenSize.width * 0.1,
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
                    SizedBox(
                      height: 2,
                    ),
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
    );
  }
}
