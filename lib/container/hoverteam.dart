import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:digibells/utills/constant.dart';

class Hoverteam extends StatelessWidget {
  const Hoverteam({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    return Scaffold(
      backgroundColor: grey,
      body: Center(
        child: Wrap(
          spacing: 20, // Space between cards
          runSpacing: 20, // Space between lines
          children: [
            HoverCard(
              name: "AP Singh",
              profile: "CEO",
              imagePath: "assets/team-1.jpg",
              deviceType: deviceType,
            ),
            HoverCard(
              name: "Vikas Shiva",
              profile: "CTO",
              imagePath: "assets/team-2.jpg",
              deviceType: deviceType,
            ),
            HoverCard(
              name: "Ravi Kumar",
              profile: "Founder",
              imagePath: "assets/team-3.jpg",
              deviceType: deviceType,
            ),
          ],
        ),
      ),
    );
  }
}

class HoverCard extends StatefulWidget {
  final String name;
  final String profile;
  final String imagePath;
  final topbar.DeviceScreenType deviceType;

  const HoverCard({
    super.key,
    required this.name,
    required this.profile,
    required this.imagePath,
    required this.deviceType,
  });

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    return Container(
        width: deviceType == topbar.DeviceScreenType.tablet ? 300 : 400,
        height: deviceType == topbar.DeviceScreenType.tablet ? 300 : 350,
        color: white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: SizedBox(
                width: widget.deviceType == topbar.DeviceScreenType.tablet
                    ? 200
                    : 250, // Image width
                height: widget.deviceType == topbar.DeviceScreenType.tablet
                    ? 150
                    : 200, // Image height
                child: Image.asset(
                  widget.imagePath,
                  fit:
                      BoxFit.cover, // Ensures the image fills the circular area
                ),
              ),
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.profile,
                  style: TextStyle(
                    fontSize: 14,
                    color: black54,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
