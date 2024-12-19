import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Whychoose extends StatefulWidget {
  const Whychoose({super.key});

  @override
  State<Whychoose> createState() => _WhychooseState();
}

class _WhychooseState extends State<Whychoose> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Determine image height based on device type
    final double imageHeight =
        deviceType == topbar.DeviceScreenType.tablet ? 400 : 300;
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Why Choose Us",
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
                            text: "Why People Trust Us? Learn About Us!",
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.tablet
                                      ? 30
                                      : 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Use default text color
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
                      "The DigitalSpark Team brings together a group of experienced eCommerce professionals who understand the unique challenges and opportunities of each platform. Our data-driven approach ensures that we tailor our strategies to meet your specific goals, whether you're a small business or a large enterprise. With our support, you can focus on what you do best—running your business—while we handle the intricacies of online management. Join us in transforming your eCommerce journey into a successful venture. Contact us today to learn more about how we can help you excel on Amazon, Flipkart, and Meesho!.",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          "Account Boost Management",
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
                        AutoSizeText(
                          "95%",
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
                      ],
                    ),
                    Container(
                      height: 5, // Divider height
                      width: 650, // Fixed width
                      color: grey250, // Divider color
                      margin: const EdgeInsets.symmetric(
                          vertical: 8), // Add spacing
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          "A Plus Content",
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
                        AutoSizeText(
                          "85%",
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
                      ],
                    ),
                    Container(
                      height: 5, // Divider height
                      width: 650, // Fixed width
                      color: grey250, // Divider color
                      margin: const EdgeInsets.symmetric(
                          vertical: 8), // Add spacing
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          "Amazon/Flipkart Trainings",
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
                        AutoSizeText(
                          "70%",
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
                      ],
                    ),
                    Container(
                      height: 5, // Divider height
                      width: 650, // Fixed width
                      color: grey250, // Divider color
                      margin: const EdgeInsets.symmetric(
                          vertical: 8), // Add spacing
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          "Listings and Brand Stores",
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
                        AutoSizeText(
                          "95%",
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
                      ],
                    ),
                    Container(
                      height: 5, // Divider height
                      width: 650, // Fixed width
                      color: grey250, // Divider color
                      margin: const EdgeInsets.symmetric(
                          vertical: 8), // Add spacing
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width *
                        0.04, // Adjust dynamically
                    top: MediaQuery.of(context).size.height *
                        0.04, // Adjust dynamically
                    bottom: MediaQuery.of(context).size.height *
                        0.04, // Adjust dynamically
                  ),
                  child: Stack(
                    clipBehavior: Clip.none, // Allow elements to overflow
                    children: [
                      // Outer blue border
                      Positioned(
                        child: Container(
                          height: imageHeight,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue, // Blue border color
                              width: 4, // Border thickness
                            ),
                            borderRadius:
                                BorderRadius.circular(12), // Rounded corners
                          ),
                        ),
                      ),
                      // Main image overlay
                      Positioned.fill(
                        top: MediaQuery.of(context).size.height *
                        0.04, // Adjust dynamically
                        left: MediaQuery.of(context).size.height *
                        0.04, // Adjust dynamically
                        right:  MediaQuery.of(context).size.height *
                        -0.04, // Adjust dynamically
                        bottom:  MediaQuery.of(context).size.height *
                        -0.04, // Adjust dynamically
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                          child: Image.asset(
                            "assets/feature.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        : Row(
            children: [
              // Left Image Section
              Flexible(
                flex: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 40),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Why Choose Us",
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
                                text: "Why People Trust Us? Learn About Us!",
                                style: TextStyle(
                                  fontSize: deviceType ==
                                          topbar.DeviceScreenType.tablet
                                      ? 30
                                      : 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Use default text color
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
                          "The DigitalSpark Team brings together a group of experienced eCommerce professionals who understand the unique challenges and opportunities of each platform. Our data-driven approach ensures that we tailor our strategies to meet your specific goals, whether you're a small business or a large enterprise. With our support, you can focus on what you do best—running your business—while we handle the intricacies of online management. Join us in transforming your eCommerce journey into a successful venture. Contact us today to learn more about how we can help you excel on Amazon, Flipkart, and Meesho!",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "Account Boost Management",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                                color: black54,
                              ),
                            ),
                            AutoSizeText(
                              "95%",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                                color: black54,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 5, // Divider height
                          width: 650, // Fixed width
                          color: grey250, // Divider color
                          margin: const EdgeInsets.symmetric(
                              vertical: 8), // Add spacing
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "A Plus Content",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                                color: black54,
                              ),
                            ),
                            AutoSizeText(
                              "85%",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                                color: black54,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 5, // Divider height
                          width: 650, // Fixed width
                          color: grey250, // Divider color
                          margin: const EdgeInsets.symmetric(
                              vertical: 8), // Add spacing
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "Amazon/Flipkart Trainings",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                                color: black54,
                              ),
                            ),
                            AutoSizeText(
                              "70%",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                                color: black54,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 5, // Divider height
                          width: 650, // Fixed width
                          color: grey250, // Divider color
                          margin: const EdgeInsets.symmetric(
                              vertical: 8), // Add spacing
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "Listings and Brand Stores",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                                color: black54,
                              ),
                            ),
                            AutoSizeText(
                              "95%",
                              style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                                color: black54,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 5, // Divider height
                          width: 650, // Fixed width
                          color: grey250, // Divider color
                          margin: const EdgeInsets.symmetric(
                              vertical: 8), // Add spacing
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Right Content Section
              Flexible(
                flex: 50,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, top: 40, bottom: 40),
                  child: Stack(
                    clipBehavior: Clip.none, // Allow elements to overflow
                    children: [
                      // Outer blue border
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue, // Blue border color
                              width: 4, // Border thickness
                            ),
                            borderRadius:
                                BorderRadius.circular(12), // Rounded corners
                          ),
                        ),
                      ),
                      // Main image overlay
                      Positioned(
                        top: 40, // Adjust the vertical overlay offset
                        left: 40, // Adjust the horizontal overlay offset
                        right: -40, // Extend right for the overlay effect
                        bottom: -40, // Extend bottom for the overlay effect
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                          child: Image.asset(
                            "assets/feature.jpg",
                            fit: BoxFit.cover, // Maintain aspect ratio
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
