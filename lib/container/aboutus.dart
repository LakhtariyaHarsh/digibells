import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Determine image height based on device type
    final double imageHeight =
        deviceType == topbar.DeviceScreenType.tablet ? 600 : 300;
    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    double containerWidth = deviceType == topbar.DeviceScreenType.desktop
        ? 600
        : deviceType == topbar.DeviceScreenType.tablet
            ? 400
            : 200;

    return (isMobile || isTablet)
        ? Column(
            children: [
              SizedBox(
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, top: 40, bottom: 40),
                  child: Positioned.fill(
                    child: Image.asset(
                      "assets/logo1.jfif",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "ABOUT US",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: orange, // Blue title to match the design
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 3, // Divider height
                                width: 40, // Fixed width
                                color: blue, // Divider color
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1.5, // Divider height
                                width: 60, // Fixed width
                                color: blue, // Divider color
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "#1 Digital and Ecommerce Solutions With ",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.tablet
                                        ? 30
                                        : 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black, // Use default text color
                              ),
                            ),
                            TextSpan(
                              text: "10 Years ",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.tablet
                                        ? 30
                                        : 40,
                                fontWeight: FontWeight.bold,
                                color: orange, // Highlighted text
                              ),
                            ),
                            TextSpan(
                              text: "Of Experience",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.tablet
                                        ? 30
                                        : 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 15,
                      ),
                      AutoSizeText(
                        "Welcome to DigitalSpark Team, your trusted partner in navigating the dynamic world of eCommerce! Our mission is to empower businesses to thrive online by providing expert management services tailored specifically for leading platforms such as Amazon, Flipkart, and Meesho.",
                        style: TextStyle(
                          fontSize: deviceType == topbar.DeviceScreenType.mobile
                              ? 15
                              : (deviceType == topbar.DeviceScreenType.tablet
                                  ? 15
                                  : 17),
                          color: black54,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AutoSizeText(
                        "With a passionate team of eCommerce specialists, we understand the unique challenges faced by online sellers. Our goal is to simplify the complexities of managing your eCommerce presence, enabling you to focus on what you do best—growing your business.",
                        style: TextStyle(
                          fontSize: deviceType == topbar.DeviceScreenType.mobile
                              ? 15
                              : (deviceType == topbar.DeviceScreenType.tablet
                                  ? 15
                                  : 17),
                          color: black54,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AutoSizeText(
                        "At DigitalSpark Team, we believe in a collaborative approach. Our success is rooted in understanding your unique needs and crafting strategies that align with your goals.",
                        style: TextStyle(
                          fontSize: deviceType == topbar.DeviceScreenType.mobile
                              ? 15
                              : (deviceType == topbar.DeviceScreenType.tablet
                                  ? 15
                                  : 17),
                          color: black54,
                        ),
                      ),

                      const SizedBox(height: 24),
                      // CEO Section
                    ],
                  ),
                ),
              ),
            ],
          )
        : Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left Image Section
              Expanded(
                flex: 50,
                child: Image.asset(
                  "assets/logo1.jfif",
                  fit: BoxFit.cover, // Maintain aspect ratio
                ),
              ),

              // Right Content Section
              Flexible(
                flex: 50,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height *
                        0.03, // Adjust dynamically
                    left: MediaQuery.of(context).size.height *
                        0.03, // Adjust dynamically
                  ),
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "ABOUT US",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: orange, // Blue title to match the design
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 3, // Divider height
                                  width: 40, // Fixed width
                                  color: blue, // Divider color
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1.5, // Divider height
                                  width: 60, // Fixed width
                                  color: blue, // Divider color
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "#1 Digital and Ecommerce Solutions With ",
                                style: TextStyle(
                                  fontSize: deviceType ==
                                          topbar.DeviceScreenType.tablet
                                      ? 30
                                      : 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Use default text color
                                ),
                              ),
                              TextSpan(
                                text: "10 Years ",
                                style: TextStyle(
                                  fontSize: deviceType ==
                                          topbar.DeviceScreenType.tablet
                                      ? 30
                                      : 40,
                                  fontWeight: FontWeight.bold,
                                  color: orange, // Highlighted text
                                ),
                              ),
                              TextSpan(
                                text: "Of Experience",
                                style: TextStyle(
                                  fontSize: deviceType ==
                                          topbar.DeviceScreenType.tablet
                                      ? 30
                                      : 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 15,
                        ),
                        AutoSizeText(
                          "Welcome to DigitalSpark Team, your trusted partner in navigating the dynamic world of eCommerce! Our mission is to empower businesses to thrive online by providing expert management services tailored specifically for leading platforms such as Amazon, Flipkart, and Meesho.",
                          style: TextStyle(
                            fontSize: deviceType ==
                                    topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                            color: black54,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AutoSizeText(
                          "With a passionate team of eCommerce specialists, we understand the unique challenges faced by online sellers. Our goal is to simplify the complexities of managing your eCommerce presence, enabling you to focus on what you do best—growing your business.",
                          style: TextStyle(
                            fontSize: deviceType ==
                                    topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                            color: black54,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AutoSizeText(
                          "At DigitalSpark Team, we believe in a collaborative approach. Our success is rooted in understanding your unique needs and crafting strategies that align with your goals.",
                          style: TextStyle(
                            fontSize: deviceType ==
                                    topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                            color: black54,
                          ),
                        ),

                        const SizedBox(height: 24),
                        // CEO Section
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
