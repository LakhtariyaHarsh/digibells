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
              Icons.phone_enabled,
              color: black54,
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  hoveredText = "+91-9205774999";
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
                  "+91-9205774999",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: hoveredText == "+91-9205774999"
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
          padding: const EdgeInsets.only(right: 40, left: 40, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/logo1.png"),
              if (deviceType == topbar.DeviceScreenType.desktop)
                SizedBox(
                  width: 900,
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
                                    hoveredText = "9205774999";
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
                                    "9205774999",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: hoveredText == "9205774999"
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
                                  "info@digibells.in",
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
