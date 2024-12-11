import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'socialicon.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  bool ishoverd = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MouseRegion(
        onEnter: (_) {
          setState(() {
            ishoverd = true;
          });
        },
        onExit: (_) {
          setState(() {
            ishoverd = false;
          });
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = getDeviceType(screenSize);

    // Decide whether to use Row or Column
    bool isMobile = deviceType == DeviceScreenType.mobile;
    bool isTablet = deviceType == DeviceScreenType.tablet;

    return Padding(
      padding: (isMobile || isTablet)
          ? EdgeInsets.all(0)
          : EdgeInsets.only(top: 50.0, right: 70, left: 90, bottom: 50),
      child: (isMobile || isTablet)
          ? SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: Customer_Support(deviceType),
                  ),
                  const SizedBox(height: 20), // Add spacing between sections
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: From_Blog(deviceType),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Our Market Place",
                      style: TextStyle(
                          fontSize: 15,
                          color: white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20), // Add spacing between sections
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Newsletter",
                          style: TextStyle(
                              fontSize: 15,
                              color: white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Get Updated by Ecommerce Industry News.",
                          style: TextStyle(fontSize: 15, color: white54),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors
                                    .white54), // Use Colors.white54 for consistency
                            borderRadius: BorderRadius.circular(
                                8), // Optional: Adds rounded corners
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Email",
                                    labelStyle:
                                        TextStyle(color: Colors.white54),
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                  ),
                                  style: TextStyle(
                                      color: Colors
                                          .white), // Ensure text is visible on black
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Perform login action
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: blue,
                                  minimumSize: const Size(100, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "SignUp",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: Customer_Support(deviceType),
                  ),
                ),
                const SizedBox(height: 20), // Add spacing between sections
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: From_Blog(deviceType),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Our Market Place",
                    style: TextStyle(
                        fontSize: 15,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                const SizedBox(height: 20), // Add spacing between sections
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Newsletter",
                          style: TextStyle(
                              fontSize: 15,
                              color: white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Get Updated by Ecommerce Industry News.",
                          style: TextStyle(fontSize: 15, color: white54),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors
                                    .white54), // Use Colors.white54 for consistency
                            borderRadius: BorderRadius.circular(
                                8), // Optional: Adds rounded corners
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Email",
                                    labelStyle:
                                        TextStyle(color: Colors.white54),
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                  ),
                                  style: TextStyle(
                                      color: Colors
                                          .white), // Ensure text is visible on black
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Perform login action
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: blue,
                                  minimumSize: const Size(100, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "SignUp",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  String? hoveredText;

  // Custom method for hoverable text
  Widget buildHoverable({
    required String text,
    required VoidCallback onTap,
  }) {
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
              color: Colors.black54,
            ),
            const SizedBox(width: 5),
            Flexible(
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: TextStyle(
                  fontSize:
                      hoveredText == text ? 15 : 14, // Dynamically adjust size
                  fontWeight:
                      hoveredText == text ? FontWeight.bold : FontWeight.normal,
                  color: hoveredText == text ? Colors.blue[800] : white54,
                ),
                child: Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> From_Blog(DeviceScreenType deviceType) {
    return [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              "Quick Links",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 3, // Divider height
              width: 40, // Fixed width
              color: Colors.white38, // Divider color
              margin: const EdgeInsets.symmetric(vertical: 20), // Add spacing
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: white54,
                      size: 13,
                    ),
                    Expanded(
                      child: buildHoverable(
                        text: "About Us",
                        onTap: () {
                          print("Text clicked");
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: white54,
                      size: 13,
                    ),
                    Expanded(
                      child: buildHoverable(
                        text: "Contact Us",
                        onTap: () {
                          print("Text clicked");
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: white54,
                      size: 13,
                    ),
                    Expanded(
                      child: buildHoverable(
                        text: "Our Services",
                        onTap: () {
                          print("Text clicked");
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: white54,
                      size: 13,
                    ),
                    Expanded(
                      child: buildHoverable(
                        text: "Alibaba Service Provider",
                        onTap: () {
                          print("Text clicked");
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: white54,
                      size: 13,
                    ),
                    Expanded(
                      child: buildHoverable(
                        text: "Terms & Condition",
                        onTap: () {
                          print("Text clicked");
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: white54,
                      size: 13,
                    ),
                    Expanded(
                      child: buildHoverable(
                        text: "Support",
                        onTap: () {
                          print("Text clicked");
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> Customer_Support(DeviceScreenType deviceType) {
    return [
      Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              "Address",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Container(
              height: 3, // Divider height
              width: 40, // Fixed width
              color: Colors.white38, // Divider color
              margin: const EdgeInsets.symmetric(vertical: 20), // Add spacing
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: white54,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  // Use Expanded to handle overflow
                  child: AutoSizeText(
                    "H-107, Sector 63, Noida, U.P, India",
                    style: TextStyle(color: white54, fontSize: 15),
                    maxLines: 3, // Limit lines to avoid overflow
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: white54,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  // Use Expanded to handle overflow
                  child: AutoSizeText(
                    "FF-107, Silver Business Hub, Surat, Gujarat, India",
                    style: TextStyle(color: white54, fontSize: 15),
                    maxLines: 3, // Limit lines to avoid overflow
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: white54,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  // Use Expanded to handle overflow
                  child: AutoSizeText(
                    "5A, No-1, Newry Arcade, SH 49, Panaiyur, Chennai, Tamil Nadu 600119, India",
                    style: TextStyle(color: white54, fontSize: 15),
                    maxLines: 3, // Limit lines to avoid overflow
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.phone,
                  color: white54,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    AutoSizeText(
                      "+91 9205774999",
                      style: TextStyle(
                        color: white54,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AutoSizeText(
                      "0120-4443993",
                      style: TextStyle(
                        color: white54,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: white54,
                ),
                SizedBox(
                  width: 10,
                ),
                AutoSizeText(
                  "info@digibells.in",
                  style: TextStyle(
                    color: white54,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: Wrap(
                spacing: 10, // Horizontal spacing between buttons
                runSpacing: 10,
                children: [
                  Socialicon(icon: FontAwesomeIcons.twitter, color: white54),
                  Socialicon(icon: FontAwesomeIcons.facebook, color: white54),
                  Socialicon(icon: FontAwesomeIcons.youtube, color: white54),
                  Socialicon(icon: FontAwesomeIcons.linkedin, color: white54),
                ],
              ),
            ),
          ],
        ),
      )
    ];
  }
}

enum DeviceScreenType { mobile, tablet, desktop }

DeviceScreenType getDeviceType(Size size) {
  if (size.width < 600) {
    return DeviceScreenType.mobile;
  } else if (size.width < 1200) {
    return DeviceScreenType.tablet;
  } else {
    return DeviceScreenType.desktop;
  }
}