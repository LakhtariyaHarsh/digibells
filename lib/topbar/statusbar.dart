import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'topbarcontent.dart' as topbar;

class Statusbar extends StatefulWidget {
  const Statusbar({super.key});

  @override
  State<Statusbar> createState() => _StatusbarState();
}

class _StatusbarState extends State<Statusbar> {
  bool ishoverd = false;
  String? hoveredText; // Track currently hovered text

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.phone_outlined,
              color: black54,
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  hoveredText = "+91 8076233455";
                });
              },
              onExit: (_) {
                setState(() {
                  hoveredText = "";
                });
              },
              child: GestureDetector(
                onTap: () {
                  print("Text clicked");
                },
                child: Text(
                  "+91 8076233455",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: hoveredText == "+91 8076233455"
                        ? Color(0xff007dcc)
                        : Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(
                        left: screenSize.height *
                        0.04, // Adjust dynamically
                        right:  screenSize.height *
                        0.04, // Adjust dynamically
                        bottom:  screenSize.height *
                        0.03,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/logo.png", width: 200,),
              if (deviceType == topbar.DeviceScreenType.desktop || deviceType == topbar.DeviceScreenType.hubmax || deviceType == topbar.DeviceScreenType.isWideColumnLayout)
                SizedBox(
                  width: screenSize.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: black12, // Black border color
                                width: 2.0, // Border width
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 20, // Adjust the size of the CircleAvatar
                              backgroundColor: white,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    8.0), // Padding between icon and circle
                                child: Icon(
                                  Icons.access_time,
                                  color: Colors.orange, // Icon color
                                  size: 20, // Icon size to maintain proportions
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Working Hours",
                                style: TextStyle(color: black54, fontSize: 16),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Mon - Sat, 09:30 - 6:30",
                                style: TextStyle(color: black54, fontSize: 16),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: black12, // Black border color
                                width: 2.0, // Border width
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 20, // Adjust the size of the CircleAvatar
                              backgroundColor: white,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    8.0), // Padding between icon and circle
                                child: Icon(
                                  Icons.phone_enabled,
                                  color: Colors.orange, // Icon color
                                  size: 20, // Icon size to maintain proportions
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Click to Call",
                                style: TextStyle(color: black54, fontSize: 16),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    hoveredText = "8076233455";
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    hoveredText = "";
                                  });
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    print("Text clicked");
                                  },
                                  child: Text(
                                    "8076233455",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: hoveredText == "8076233455"
                                          ? Color(0xff007dcc)
                                          : Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: black12, // Black border color
                                  width: 2.0, // Border width
                                ),
                              ),
                              child: CircleAvatar(
                                radius:
                                    20, // Adjust the size of the CircleAvatar
                                backgroundColor: white,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      8.0), // Padding between icon and circle
                                  child: Icon(
                                    Icons.mail_outline,
                                    color: Colors.orange, // Icon color
                                    size:
                                        20, // Icon size to maintain proportions
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Connect Us",
                                  style:
                                      TextStyle(color: black54, fontSize: 16),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "official@digitalsparkteam.com",
                                  style:
                                      TextStyle(color: black54, fontSize: 16),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
