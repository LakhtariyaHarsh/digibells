import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Service2 extends StatefulWidget {
  const Service2({super.key});

  @override
  State<Service2> createState() => _Service2State();
}

class _Service2State extends State<Service2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    return (isMobile)
        ? Column(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(right: 40.0, bottom: 40),
                  child: Image.asset(
                    "assets/features-2.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Amazon Account Management",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "Navigate the complexities of selling on Amazon with our dedicated management services. From optimizing product listings and enhancing visibility through SEO strategies to managing inventory and handling customer feedback, we ensure your Amazon store operates smoothly and profitably.",
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
                flex: 60,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height *
                        0.05, // Adjust dynamically
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Amazon Account Management",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AutoSizeText(
                        "Navigate the complexities of selling on Amazon with our dedicated management services. From optimizing product listings and enhancing visibility through SEO strategies to managing inventory and handling customer feedback, we ensure your Amazon store operates smoothly and profitably.",
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

              Expanded(
                flex: 40,
                child: Image.asset(
                  "assets/features-2.png",
                  fit: BoxFit.cover, // Maintain aspect ratio
                ),
              ),
            ],
          );
  }
}
