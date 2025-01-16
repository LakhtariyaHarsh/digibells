import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:digibells/utills/constant.dart';

class Hoverteam extends StatelessWidget {
  const Hoverteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: const [
              HoverCard(
                name: "SHUSHANT RAGHAV",
                profile: "FOUNDER",
                imagePath: "assets/team1.jpg",
              ),
              HoverCard(
                name: "NEHA",
                profile: "CEO",
                imagePath: "assets/team2.jpg",
              ),
              HoverCard(
                name: "DHIRAJ",
                profile: "CTO",
                imagePath: "assets/team3.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HoverCard extends StatelessWidget {
  final String name;
  final String profile;
  final String imagePath;

  const HoverCard({
    super.key,
    required this.name,
    required this.profile,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    // Responsive card dimensions
    double cardWidth = deviceType == topbar.DeviceScreenType.mobile
        ? screenSize.width * 0.9
        : 400;
    double cardHeight =
        deviceType == topbar.DeviceScreenType.mobile ? 300 : 350;
    double imageSize = deviceType == topbar.DeviceScreenType.mobile ? 150 : 200;

    return Container(
      width: cardWidth,
      height: cardHeight,
      color: white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: SizedBox(
              width: imageSize,
              height: imageSize,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            name,
            style: TextStyle(
              fontSize: deviceType == topbar.DeviceScreenType.mobile ? 14 : 16,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            profile,
            style: TextStyle(
              fontSize: deviceType == topbar.DeviceScreenType.mobile ? 12 : 14,
              color: black54,
            ),
          ),
        ],
      ),
    );
  }
}
