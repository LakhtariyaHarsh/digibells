import 'package:digibells/commonfile.dart';
import 'package:digibells/main.dart';
import 'package:digibells/redirectaboutus.dart';
import 'package:flutter/material.dart';
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
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Redirectaboutus(
                name: 'About Us',
              )), // Replace with your About Us page widget
    );
  }

  void redirectHomepage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => MyHomePage(
                title: 'digibells',
              )), // Replace with your About Us page widget
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize); // Get the device type

    return Container(
      color: orange,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: [
                Center(
                  child: SizedBox(
                    width: screenSize.width *
                        0.7, // Adjust width relative to screen size
                    height: 100,
                    child: SingleChildScrollView(
                      scrollDirection:
                          Axis.horizontal, // Enable horizontal scrolling
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // Align items to start
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Commonfile(
                                                name:
                                                    'Ecommerce Website Designing',
                                              )), // Replace with your About Us page widget
                                    );
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    text,
                                    style: TextStyle(
                                      fontSize: deviceType ==
                                              topbar.DeviceScreenType.tablet
                                          ? 14
                                          : 16,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          hoveredText == text ? black : white,
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
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Commonfile(
                                              name: targetText,
                                            ),
                                          ),
                                        );
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Text(
                                      text1,
                                      style: TextStyle(
                                        fontSize: deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 14
                                            : 16,
                                        fontWeight: FontWeight.bold,
                                        color: hoveredText == text1
                                            ? black
                                            : white,
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Commonfile(
                                        name: 'Contact Us',
                                      ), // Replace with your About Us page widget
                                    ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text(
                                  "Contact Us",
                                  style: TextStyle(
                                    fontSize: deviceType ==
                                            topbar.DeviceScreenType.tablet
                                        ? 14
                                        : 16,
                                    fontWeight: FontWeight.bold,
                                    color: hoveredText == "Contact Us"
                                        ? black
                                        : white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // pay Button
            if (deviceType != topbar.DeviceScreenType.mobile)
              Padding(
                padding: deviceType == topbar.DeviceScreenType.tablet
                    ? EdgeInsets.only(right: 40.0)
                    : EdgeInsets.only(right: 70.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blue,
                          minimumSize: const Size(120, 50),
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
