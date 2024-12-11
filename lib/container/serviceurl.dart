import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;

class Serviceurl extends StatefulWidget {
  const Serviceurl({super.key});

  @override
  State<Serviceurl> createState() => _ServiceurlState();
}

class _ServiceurlState extends State<Serviceurl> {
  bool ishoverd = false;
  String? hoveredText;

  // Custom method for hoverable text
  Widget buildHoverableText({
    required String text,
    required VoidCallback onTap,
  }) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          hoveredText = text;
        });
      },
      onExit: (_) {
        setState(() {
          hoveredText = "";
        });
      },
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.circle,
              size: 7,
              color: black54,
            ),
            const SizedBox(width: 5),
            Flexible(
              child: AutoSizeText(
                text,
                maxLines: 1, // Ensure text stays on a single line
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: hoveredText == text ? darkblue : blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    return Column(
      children: [
        deviceType == topbar.DeviceScreenType.mobile
            ? Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Flipkart Services in India",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "Flipkart Listing Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Flipkart Faq",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Flipkart Seller Registration",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Flipkart Boost Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Flipkart Reconciliation",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "flipkart advertising Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "flipkart Catalogue Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "flipkart account management Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Amazon Services in India",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "Amazon Listing Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Amazon Faq",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Amazon Seller Registration",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Amazon Boost Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Amazon Reconciliation",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Amazon advertising Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Amazon Catalogue Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Amazon account management Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Ebay Services in India",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "Ebay Listing Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Ebay Faq",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Ebay Seller Registration",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Ebay Boost Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Ebay Reconciliation",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Ebay advertising Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Ebay Catalogue Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Ebay account management",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Jiomart Services in India",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "Jiomart Listing Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Jiomart Faq",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Jiomart Seller Registration",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Jiomart Boost Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Jiomart Reconciliation",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Jiomart advertising Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Jiomart Catalogue Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Jiomart account management Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Flipkart Services in India",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "Flipkart Listing Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Flipkart Faq",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Flipkart Seller Registration",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Flipkart Boost Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Flipkart Reconciliation",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "flipkart advertising Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "flipkart Catalogue Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "flipkart account management Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Amazon Services in India",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "Amazon Listing Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Amazon Faq",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Amazon Seller Registration",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Amazon Boost Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Amazon Reconciliation",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Amazon advertising Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Amazon Catalogue Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Amazon account management Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Ebay Services in India",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "Ebay Listing Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Ebay Faq",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Ebay Seller Registration",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Ebay Boost Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Ebay Reconciliation",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Ebay advertising Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Ebay Catalogue Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Ebay account management",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Jiomart Services in India",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "Jiomart Listing Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Jiomart Faq",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Jiomart Seller Registration",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Jiomart Boost Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Jiomart Reconciliation",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Jiomart advertising Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Jiomart Catalogue Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Jiomart account management Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        SizedBox(
          height: 15,
        ),
        deviceType == topbar.DeviceScreenType.mobile
            ? Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Meesho Services in India",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "Meesho Listing Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Meesho Faq",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Meesho Seller Registration",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Meesho Boost Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Meesho Reconciliation",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Meesho advertising Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Meesho Catalogue Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Meesho account management Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Blinkit Services in India",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "Blinkit Listing Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Blinkit Faq",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Blinkit Seller Registration",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Blinkit Boost Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Blinkit Reconciliation",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Blinkit advertising Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Blinkit Catalogue Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Blinkit account management Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Walmart Services in India",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "Walmart Listing Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Walmart Faq",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Walmart Seller Registration",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Walmart Boost Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Walmart Reconciliation",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Walmart advertising Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Walmart Catalogue Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Walmart account management",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "SPN (Service Provider Network)",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in Noida",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in Surat",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in Mumbai",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in pune",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in Ahemdabad",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Meesho Services in India",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "Meesho Listing Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Meesho Faq",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Meesho Seller Registration",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Meesho Boost Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Meesho Reconciliation",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Meesho advertising Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Meesho Catalogue Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Meesho account management Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Blinkit Services in India",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "Blinkit Listing Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Blinkit Faq",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Blinkit Seller Registration",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Blinkit Boost Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Blinkit Reconciliation",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Blinkit advertising Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Blinkit Catalogue Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Blinkit account management Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Walmart Services in India",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "Walmart Listing Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Walmart Faq",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Walmart Seller Registration",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Walmart Boost Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Walmart Reconciliation",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Walmart advertising Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Walmart Catalogue Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Walmart account management",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "SPN (Service Provider Network)",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in Noida",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in Surat",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in Mumbai",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in pune",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in Ahemdabad",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        SizedBox(
          height: 15,
        ),
        deviceType == topbar.DeviceScreenType.mobile
            ? Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Web Development",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "PHP Development",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Wordpress Development",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "eCommerce Solution",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Website Design",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Digital Marketing",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text: "SEO Services",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "PPC",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Social Media Marketing",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Lead Generation",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text: "Facebook Marketing",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "SPN (Service Provider Network)",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize:
                              deviceType == topbar.DeviceScreenType.desktop
                                  ? 16
                                  : 14,
                          color: black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in Chennai",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in kotchi",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in Jaipur",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in Delhi",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                            buildHoverableText(
                              text:
                                  "Best Service Provider Network services in Gurugram",
                              onTap: () {
                                print("Text clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Web Development",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "PHP Development",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Wordpress Development",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "eCommerce Solution",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Website Design",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Digital Marketing",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text: "SEO Services",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "PPC",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Social Media Marketing",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Lead Generation",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text: "Facebook Marketing",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "SPN (Service Provider Network)",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.desktop
                                      ? 16
                                      : 14,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in Chennai",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in kotchi",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in Jaipur",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in Delhi",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                                buildHoverableText(
                                  text:
                                      "Best Service Provider Network services in Gurugram",
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
      ],
    );
  }
}
