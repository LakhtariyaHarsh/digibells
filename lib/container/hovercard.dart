import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;

class HoverCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    return Center(
      child: Container(
        width: screenSize.width * 0.87,
        child: deviceType == topbar.DeviceScreenType.mobile
            ? Column(
                spacing: 40, // Space between cards
                children: [
                  buildHoverCard(
                      "Years Experience", "2", Icons.wb_sunny_rounded),
                  buildHoverCard("Team Members", "20",
                      Icons.supervised_user_circle_outlined),
                  buildHoverCard(
                      "Clients", "1000 +", Icons.supervised_user_circle),
                  buildHoverCard("Projects", "7",
                      Icons.system_security_update_good_rounded),
                ],
              )
            : deviceType == topbar.DeviceScreenType.tablet || deviceType == topbar.DeviceScreenType.hubmax || deviceType == topbar.DeviceScreenType.isWideColumnLayout
                ? Column(
                    spacing: 40, // Space between cards
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildHoverCard(
                              "Years Experience", "2", Icons.wb_sunny_rounded),
                          buildHoverCard("Team Members", "20",
                              Icons.supervised_user_circle_outlined),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildHoverCard("Clients", "1000 +",
                              Icons.supervised_user_circle),
                          buildHoverCard("Projects", "7",
                              Icons.system_security_update_good_rounded),
                        ],
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildHoverCard(
                          "Years Experience", "2", Icons.wb_sunny_rounded),
                      buildHoverCard("Team Members", "20",
                          Icons.supervised_user_circle_outlined),
                      buildHoverCard(
                          "Clients", "1000 +", Icons.supervised_user_circle),
                      buildHoverCard("Projects", "7",
                          Icons.system_security_update_good_rounded),
                    ],
                  ),
      ),
    );
  }

  Widget buildHoverCard(String title, String rank, IconData iconData) {
    return HoverCard(title: title, rank: rank, iconData: iconData);
  }
}

class HoverCard extends StatefulWidget {
  final String title;
  final String rank;
  final IconData iconData;

  const HoverCard({
    Key? key,
    required this.title,
    required this.rank,
    required this.iconData,
  }) : super(key: key);

  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: 300,
        height: 300,
        margin: EdgeInsets.only(bottom: isHovered ? 20 : 0),
        decoration: BoxDecoration(
          color: isHovered ? white : grey250,
          boxShadow: [
            BoxShadow(
              color: isHovered ? black26 : white,
              blurRadius: isHovered ? 20 : 10,
              spreadRadius: isHovered ? 2 : 1,
              offset: isHovered ? Offset(0, 10) : Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(widget.iconData, size: 80, color: orange),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: black),
              ),
              Text(
                widget.rank,
                style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
