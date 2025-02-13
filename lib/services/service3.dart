import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Service3 extends StatefulWidget {
  const Service3({super.key});

  @override
  State<Service3> createState() => _Service3State();
}

class _Service3State extends State<Service3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;

    return (isMobile)
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Image.asset(
                  "assets/features-3.png",
                  height: screenSize.height * 0.3, // Adjust height for mobile
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Flipkart Account Management",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "Unlock the full potential of your Flipkart store with our tailored solutions. We focus on creating engaging product descriptions, managing advertising campaigns, and optimizing pricing strategies to drive sales and improve your brand’s presence on one of India’s largest eCommerce platforms.",
                      style: TextStyle(
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 15
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 15
                                : 17),
                        color: black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            children: [
              // Left Image Section
              Flexible(
                flex: 30,
                child: Image.asset(
                  "assets/features-3.png",
                  fit: BoxFit.cover, // Maintain aspect ratio
                ),
              ),

              // Right Content Section
              Flexible(
                flex: 50,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Flipkart Account Management",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AutoSizeText(
                        "Unlock the full potential of your Flipkart store with our tailored solutions. We focus on creating engaging product descriptions, managing advertising campaigns, and optimizing pricing strategies to drive sales and improve your brand’s presence on one of India’s largest eCommerce platforms.",
                        style: TextStyle(
                          fontSize: deviceType == topbar.DeviceScreenType.mobile
                              ? 15
                              : (deviceType == topbar.DeviceScreenType.tablet
                                  ? 15
                                  : 17),
                          color: black54,
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
