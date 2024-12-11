import 'package:digibells/utills/constant.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Bottompart extends StatefulWidget {
  const Bottompart({super.key});

  @override
  State<Bottompart> createState() => _BottompartState();
}

class _BottompartState extends State<Bottompart> {
  bool isHovered = false;

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
          : EdgeInsets.only(top: 20.0, right: 70, left: 90, bottom: 20),
      child: (isMobile || isTablet)
          ? Column()
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovered = false;
                    });
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "©  ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54, // Use default text color
                          ),
                        ),
                        WidgetSpan(
                          child: AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 200),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: isHovered ? blue : white,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("Hovered text clicked");
                              },
                              child: Text("Digibells Esolutions India, "),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: " @2023, All Right Reserved.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54, // Use default text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovered = false;
                    });
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Designed By  ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54, // Use default text color
                          ),
                        ),
                        WidgetSpan(
                          child: AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 200),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: isHovered ? blue : white,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                print("Hovered text clicked");
                              },
                              child: Text("Digibells Esolutions India Pvt Ltd"),
                            ),
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
