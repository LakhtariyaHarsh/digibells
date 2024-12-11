import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'topbarcontent.dart' as topbar;

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
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

    return AppBar(
      backgroundColor: orange,
      title: (deviceType == topbar.DeviceScreenType.mobile ||
              deviceType == topbar.DeviceScreenType.tablet)
          ? Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Ensure proper spacing
              children: [
                Text(
                  "MENU",
                  style: TextStyle(
                    color: Colors.white, // Adjust text color
                    fontSize: 18, // Adjust text size if needed
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors
                        .white, // Ensure the icon color matches the design
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (_) => Align(
                        alignment: Alignment.centerRight,
                        child: FractionallySizedBox(
                          heightFactor: 1,
                          widthFactor: 0.80, // Adjust width for the modal
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Close Button
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: const Icon(Icons.close,
                                          color: Colors.black),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                ),
                                // Navigation Items
                                Expanded(
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    children: [
                                      _buildStaticTile("Home"),
                                      _buildStaticTile("About Us"),
                                      _buildStaticTile("Website Designing"),
                                      for (var text in [
                                        "Alibaba GGS Services ⮟",
                                        "Account Management Services ⮟",
                                        "Calculator ⮟",
                                      ])
                                        PopupMenuButton<String>(
                                          onSelected: (value) {
                                            debugPrint(
                                                "$text: $value selected");
                                            Navigator.pop(context);
                                          },
                                          itemBuilder: (context) {
                                            if (popupMenuData
                                                .containsKey(text)) {
                                              return popupMenuData[text]!
                                                  .map((item) {
                                                return PopupMenuItem<String>(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList();
                                            }
                                            return [];
                                          },
                                          child: Column(
                                            children: [
                                              ListTile(
                                                title: Text(
                                                  text,
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ),
                                              ),
                                              Divider(),
                                            ],
                                          ),
                                        ),
                                      _buildStaticTile("Contact Us"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          : Container(),
    );
  }
}
