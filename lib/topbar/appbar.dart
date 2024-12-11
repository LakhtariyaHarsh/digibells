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
                children:[
                  Center(
                  child: 
                  SizedBox(
                    width: deviceType == topbar.DeviceScreenType.tablet ?600 :950,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var text in [
                          "Home",
                          "About Us",
                          "Website Designing",
                          "Alibaba GGS Services ⮟",
                          "Account Management Services ⮟",
                          "Calculator ⮟",
                          "Contact Us",
                        ])
                          MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                hoveredText = text;
                              });
                              showPopup(context, text, event.position);
                            },
                            onExit: (_) {
                              setState(() {
                                hoveredText = null;
                                hidePopup();
                              });
                            },
                            child: PopupMenuButton<String>(
                              onSelected: (value) {
                                debugPrint("Selected: $value");
                                hidePopup();
                              },
                              itemBuilder: (_) => buildPopupMenu(text),
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
                          ), // Custom "Update" Item
                      ],
                    ),
                  ),
                ),
                ] 
              ),
            // pay Button
            if (deviceType != topbar.DeviceScreenType.mobile)
              Padding(
                padding: deviceType == topbar.DeviceScreenType.tablet ? EdgeInsets.only(right: 40.0) : EdgeInsets.only(right: 70.0),
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
                    SizedBox(height: 2,),
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