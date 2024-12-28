import 'package:digibells/commonfile.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:go_router/go_router.dart';

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
                            for (var textName in [
                              "Flipkart-Listing-Services",
                              "Flipkart-Faq",
                              "Flipkart-Seller-Registration",
                              "Flipkart-Boost-Services",
                              "Flipkart-Reconciliation",
                              "Flipkart-Advertising-Services",
                              "Flipkart-Catalogue-Services",
                              "Flipkart-Account-Management-Services",
                            ])
                              buildHoverableText(
                                text: textName,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Commonfile(
                                        name: textName,
                                      ),
                                    ),
                                  );
                                },
                              ),
                          ],
                        ),
                      )
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
                            for (var textName in [
                              "Amazon-Listing-Services",
                              "Amazon-Faq",
                              "Amazon-Seller-Registration",
                              "Amazon-Boost-Services",
                              "Amazon-Reconciliation",
                              "Amazon-advertising-Services",
                              "Amazon-Catalogue-Services",
                              "Amazon-account-management-Services",
                            ])
                              buildHoverableText(
                                text: textName,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Commonfile(
                                        name: textName,
                                      ),
                                    ),
                                  );
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
                            for (var textName in [
                              "Ebay-Listing-Services",
                              "Ebay-Faq",
                              "Ebay-Seller-Registration",
                              "Ebay-Boost-Services",
                              "Ebay-Reconciliation",
                              "Ebay-advertising-Services",
                              "Ebay-Catalogue-Services",
                              "Ebay-account-management",
                            ])
                              buildHoverableText(
                                text: textName,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Commonfile(
                                        name: textName,
                                      ),
                                    ),
                                  );
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
                            for (var textName in [
                              "Jiomart-Listing-Services",
                              "Jiomart-Faq",
                              "Jiomart-Seller-Registration",
                              "Jiomart-Boost-Services",
                              "Jiomart-Reconciliation",
                              "Jiomart-advertising-Services",
                              "Jiomart-Catalogue-Services",
                              "Jiomart-account-management-Services",
                            ])
                              buildHoverableText(
                                text: textName,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Commonfile(
                                        name: textName,
                                      ),
                                    ),
                                  );
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
                                for (var textName in [
                                  "Flipkart-Listing-Services",
                                  "Flipkart-Faq",
                                  "Flipkart-Seller-Registration",
                                  "Flipkart-Boost-Services",
                                  "Flipkart-Reconciliation",
                                  "Flipkart-Advertising-Services",
                                  "Flipkart-Catalogue-Services",
                                  "Flipkart-Account-management-Services",
                                ])
                                  buildHoverableText(
                                    text: textName,
                                    onTap: () {
                                      context.go(
                                          '/${Uri.encodeComponent(textName)}');
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
                                for (var textName in [
                                  "Amazon-Listing-Services",
                                  "Amazon-Faq",
                                  "Amazon-Seller-Registration",
                                  "Amazon-Boost-Services",
                                  "Amazon-Reconciliation",
                                  "Amazon-advertising-Services",
                                  "Amazon-Catalogue-Services",
                                  "Amazon-account-management-Services",
                                ])
                                  buildHoverableText(
                                    text: textName,
                                    onTap: () {
                                      context.go(
                                          '/${Uri.encodeComponent(textName)}');
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
                                  for (var textName in [
                                    "Ebay-Listing-Services",
                                    "Ebay-Faq",
                                    "Ebay-Seller-Registration",
                                    "Ebay-Boost-Services",
                                    "Ebay-Reconciliation",
                                    "Ebay-advertising-Services",
                                    "Ebay-Catalogue-Services",
                                    "Ebay-account-management",
                                  ])
                                    buildHoverableText(
                                      text: textName,
                                      onTap: () {
                                        context.go(
                                            '/${Uri.encodeComponent(textName)}');
                                      },
                                    ),
                                ],
                              )),
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
                                  for (var textName in [
                                    "Jiomart-Listing-Services",
                                    "Jiomart-Faq",
                                    "Jiomart-Seller-Registration",
                                    "Jiomart-Boost-Services",
                                    "Jiomart-Reconciliation",
                                    "Jiomart-advertising-Services",
                                    "Jiomart-Catalogue-Services",
                                    "Jiomart-account-management-Services",
                                  ])
                                    buildHoverableText(
                                      text: textName,
                                      onTap: () {
                                        context.go(
                                            '/${Uri.encodeComponent(textName)}');
                                      },
                                    ),
                                ],
                              )),
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
                              for (var textName in [
                                "Meesho-Listing-Services",
                                "Meesho-Faq",
                                "Meesho-Seller-Registration",
                                "Meesho-Boost-Services",
                                "Meesho-Reconciliation",
                                "Meesho-advertising-Services",
                                "Meesho-Catalogue-Services",
                                "Meesho-account-management-Services",
                              ])
                                buildHoverableText(
                                  text: textName,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Commonfile(
                                          name: textName,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                            ],
                          )),
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
                              for (var textName in [
                                "Blinkit-Listing-Services",
                                "Blinkit-Faq",
                                "Blinkit-Seller-Registration",
                                "Blinkit-Boost-Services",
                                "Blinkit-Reconciliation",
                                "Blinkit-advertising-Services",
                                "Blinkit-Catalogue-Services",
                                "Blinkit-account-management-Services",
                              ])
                                buildHoverableText(
                                  text: textName,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Commonfile(
                                          name: textName,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                            ],
                          )),
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
                            ...[
                              "Walmart-Listing-Services",
                              "Walmart-Faq",
                              "Walmart-Seller-Registration",
                              "Walmart-Boost-Services",
                              "Walmart-Reconciliation",
                              "Walmart-Advertising-Services",
                              "Walmart-Catalogue-Services",
                              "Walmart-Account-Management"
                            ]
                                .map(
                                  (text) => buildHoverableText(
                                    text: text,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Commonfile(
                                            name: text,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                                .toList(),
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
                              ...[
                                "Best-Service-Provider-Network-services-in-Noida",
                                "Best-Service-Provider-Network-services-in-Surat",
                                "Best-Service-Provider-Network-services-in-Mumbai",
                                "Best-Service-Provider-Network-services-in-Pune",
                                "Best-Service-Provider-Network-services-in-Ahmedabad"
                              ]
                                  .map(
                                    (text) => buildHoverableText(
                                      text: text,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Commonfile(
                                              name: text,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                  .toList(),
                            ],
                          )),
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
                                for (var textName in [
                                  "Meesho-Listing-Services",
                                  "Meesho-Faq",
                                  "Meesho-Seller-Registration",
                                  "Meesho-Boost-Services",
                                  "Meesho-Reconciliation",
                                  "Meesho-advertising-Services",
                                  "Meesho-Catalogue-Services",
                                  "Meesho-account-management-Services",
                                ])
                                  buildHoverableText(
                                    text: textName,
                                    onTap: () {
                                      context.go(
                                          '/${Uri.encodeComponent(textName)}');
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
                                for (var textName in [
                                  "Blinkit-Listing-Services",
                                  "Blinkit-Faq",
                                  "Blinkit-Seller-Registration",
                                  "Blinkit-Boost-Services",
                                  "Blinkit-Reconciliation",
                                  "Blinkit-advertising-Services",
                                  "Blinkit-Catalogue-Services",
                                  "Blinkit-account-management-Services",
                                ])
                                  buildHoverableText(
                                    text: textName,
                                    onTap: () {
                                      context.go(
                                          '/${Uri.encodeComponent(textName)}');
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
                                  ...[
                                    "Walmart-Listing-Services",
                                    "Walmart-Faq",
                                    "Walmart-Seller-Registration",
                                    "Walmart-Boost-Services",
                                    "Walmart-Reconciliation",
                                    "Walmart-Advertising-Services",
                                    "Walmart-Catalogue-Services",
                                    "Walmart-Account-Management"
                                  ]
                                      .map(
                                        (text) => buildHoverableText(
                                          text: text,
                                          onTap: () {
                                            context.go(
                                                '/${Uri.encodeComponent(text)}');
                                          },
                                        ),
                                      )
                                      .toList(),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
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
                              ...[
                                "Best-Service-Provider-Network-services-in-Noida",
                                "Best-Service-Provider-Network-services-in-Surat",
                                "Best-Service-Provider-Network-services-in-Mumbai",
                                "Best-Service-Provider-Network-services-in-Pune",
                                "Best-Service-Provider-Network-services-in-Ahmedabad"
                              ]
                                  .map(
                                    (text) => buildHoverableText(
                                      text: text,
                                      onTap: () {
                                        context.go(
                                            '/${Uri.encodeComponent(text)}');
                                      },
                                    ),
                                  )
                                  .toList(),
                            ],
                          ),
                        ),
                      ],
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
                            ...[
                              "PHP-Development",
                              "Wordpress-Development",
                              "eCommerce-Solution",
                              "Website-Design"
                            ]
                                .map(
                                  (text) => buildHoverableText(
                                    text: text,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Commonfile(
                                            name: text,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                                .toList(),
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
                              ...[
                                "SEO-Services",
                                "PPC",
                                "Social-Media-Marketing",
                                "Lead-Generation",
                                "Facebook-Marketing"
                              ]
                                  .map(
                                    (text) => buildHoverableText(
                                      text: text,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Commonfile(
                                              name: text,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                  .toList(),
                            ],
                          )),
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
                              ...[
                                "Best-Service-Provider-Network-services-in-Chennai",
                                "Best-Service-Provider-Network-services-in-kotchi",
                                "Best-Service-Provider-Network-services-in-Jaipur",
                                "Best-Service-Provider-Network-services-in-Delhi",
                                "Best-Service-Provider-Network-services-in-Gurugram"
                              ]
                                  .map(
                                    (text) => buildHoverableText(
                                      text: text,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Commonfile(
                                              name: text,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                  .toList(),
                            ],
                          )),
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
                                  ...[
                                    "PHP-Development",
                                    "Wordpress-Development",
                                    "eCommerce-Solution",
                                    "Website-Design"
                                  ]
                                      .map(
                                        (text) => buildHoverableText(
                                          text: text,
                                          onTap: () {
                                            context.go(
                                                '/${Uri.encodeComponent(text)}');
                                          },
                                        ),
                                      )
                                      .toList(),
                                ],
                              )),
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
                                ...[
                                  "SEO-Services",
                                  "PPC",
                                  "Social-Media-Marketing",
                                  "Lead-Generation",
                                  "Facebook-Marketing"
                                ]
                                    .map(
                                      (text) => buildHoverableText(
                                        text: text,
                                        onTap: () {
                                          context.go(
                                              '/${Uri.encodeComponent(text)}');
                                        },
                                      ),
                                    )
                                    .toList(),
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
                              fontSize: 16,
                              color: black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...[
                                  "Best-Service-Provider-Network-services-in-Chennai",
                                  "Best-Service-Provider-Network-services-in-kotchi",
                                  "Best-Service-Provider-Network-services-in-Jaipur",
                                  "Best-Service-Provider-Network-services-in-Delhi",
                                  "Best-Service-Provider-Network-services-in-Gurugram"
                                ]
                                    .map(
                                      (text) => buildHoverableText(
                                        text: text,
                                        onTap: () {
                                          context.go(
                                              '/${Uri.encodeComponent(text)}');
                                        },
                                      ),
                                    )
                                    .toList(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Expanded(child: Container(color: orange,))
                ],
              ),
      ],
    );
  }
}
