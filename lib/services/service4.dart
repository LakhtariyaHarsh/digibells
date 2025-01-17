import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Service4 extends StatefulWidget {
  const Service4({super.key});

  @override
  State<Service4> createState() => _Service4State();
}

class _Service4State extends State<Service4> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    return (isMobile)
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40.0, bottom: 40),
                child: Image.asset(
                  "assets/features-4.png",
                  height: screenSize.height * 0.3, // Adjust for mobile/tablet
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Meesho Account Management",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "Embrace the future of social commerce with our Meesho management services. We guide you through the process of setting up and promoting your business on Meesho, helping you tap into the power of social networks. Our team provides support in curating trendy product offerings, managing your storefront, and maximizing your earnings through effective marketing strategies.",
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left Image Section
              Flexible(
                flex: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Meesho Account Management",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "Embrace the future of social commerce with our Meesho management services. We guide you through the process of setting up and promoting your business on Meesho, helping you tap into the power of social networks. Our team provides support in curating trendy product offerings, managing your storefront, and maximizing your earnings through effective marketing strategies.",
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

              Flexible(
                flex: 30,
                child: Image.asset(
                  "assets/features-4.png",
                  fit: BoxFit.cover, // Maintain aspect ratio
                ),
              ),
            ],
          );
  }
}
