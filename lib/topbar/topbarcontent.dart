import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Topbarcontent extends StatefulWidget {
  const Topbarcontent({super.key});

  @override
  State<Topbarcontent> createState() => _TopbarcontentState();
}

class _TopbarcontentState extends State<Topbarcontent> {
  bool ishoverd = false;
  String? hoveredText; // Track currently hovered text

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = getDeviceType(screenSize);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Home",
                  style: TextStyle(color: black54),
                )),
            Text("/"),
            TextButton(
                onPressed: () {},
                child: Text("Career", style: TextStyle(color: black54))),
            Text("/"),
            TextButton(
                onPressed: () {},
                child: Text("Terms", style: TextStyle(color: black54))),
            Text("/"),
            TextButton(
                onPressed: () {},
                child: Text("Privacy", style: TextStyle(color: black54))),
            Text("/"),
            TextButton(
                onPressed: () {},
                child: Text("Refund", style: TextStyle(color: black54))),
            Text("/"),
            TextButton(
                onPressed: () {},
                child: Text("Packages", style: TextStyle(color: black54))),
          ],
        ),
        Row(
          children: [
            Text(
              "Follow us :",
              style: TextStyle(color: black54),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 0.2, // Set the border width to 0.5 pixels
                    // color: Colors.grey, // Use a light color for the border
                  ),
                ), // Set the background color
              ),
              child: IconButton(
                onPressed: () {}, // Add your onPressed logic here
                icon: Icon(FontAwesomeIcons.facebook),
                color: orange,
                iconSize: 17, // Wrap the FontAwesomeIcons in an Icon widget
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 0.2, // Set the border width to 0.5 pixels
                    // color: Colors.grey, // Use a light color for the border
                  ),
                ), // Set the background color
              ),
              child: IconButton(
                onPressed: () {}, // Add your onPressed logic here
                icon: Icon(FontAwesomeIcons.twitter),
                color: orange,
                iconSize: 17, // Wrap the FontAwesomeIcons in an Icon widget
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 0.2, // Set the border width to 0.5 pixels
                    // color: Colors.grey, // Use a light color for the border
                  ),
                ), // Set the background color
              ),
              child: IconButton(
                onPressed: () {}, // Add your onPressed logic here
                icon: Icon(FontAwesomeIcons.linkedin),
                color: orange,
                iconSize: 17, // Wrap the FontAwesomeIcons in an Icon widget
              ),
            ),
            IconButton(
              onPressed: () {}, // Add your onPressed logic here
              icon: Icon(FontAwesomeIcons.instagram),
              color: orange,
              iconSize: 17, // Wrap the FontAwesomeIcons in an Icon widget
            ),
          ],
        )
      ],
    );
  }
}

enum DeviceScreenType { mobile, tablet, desktop, hubmax , other}

DeviceScreenType getDeviceType(Size size) {
  if (size.width <= 720) {
    return DeviceScreenType.mobile;
  } else if (size.width >720 && size.width < 1100) {
    return DeviceScreenType.tablet;
  } else if (size.width <=1280 && size.width >= 1100){
    return DeviceScreenType.hubmax;
  } else if (size.width >1280 ){
    return DeviceScreenType.desktop;
  } else {
    return DeviceScreenType.other;
  }
}
