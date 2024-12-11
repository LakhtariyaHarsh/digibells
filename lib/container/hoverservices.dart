import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:digibells/utills/constant.dart';

class HoverCardServicePage extends StatelessWidget {
  const HoverCardServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey,
        body: Center(
          child: Wrap(
            spacing: 20, // Space between cards
            runSpacing: 20, // Space between lines
            children: [
              buildHoverCard(
                title: "11000 + Clients",
                imagePath: "assets/service-1.jpg",
              ),
              buildHoverCard(
                title: "Ecommerce Packages",
                imagePath: "assets/service-2.jpg",
              ),
              buildHoverCard(
                title: "Guaranteed Growth",
                imagePath: "assets/service-3.jpg",
              ),
              buildHoverCard(
                title: "Refund Policy",
                imagePath: "assets/service-4.jpg",
              ),
              buildHoverCard(
                title: "Strategies by Experts",
                imagePath: "assets/service-5.jpg",
              ),
              buildHoverCard(
                title: "Reduce Fixed Costs",
                imagePath: "assets/service-6.jpg",
              ),
            ],
          ),
        ));
  }

  Widget buildHoverCard({
    required String title,
    required String imagePath,
  }) {
    return HoverServiceCard(
      title: title,
      imagePath: imagePath,
    );
  }
}

class HoverServiceCard extends StatefulWidget {
  final String title;
  final String imagePath;

  const HoverServiceCard({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  _HoverServiceCardState createState() => _HoverServiceCardState();
}

class _HoverServiceCardState extends State<HoverServiceCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

      // Decide whether to use Row or Column
      bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
      bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    return MouseRegion(
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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: deviceType == topbar.DeviceScreenType.tablet ? 300 : 400,
        height: deviceType == topbar.DeviceScreenType.tablet ? 300 : 350,
        margin: EdgeInsets.only(bottom: isHovered ? 20 : 0),
        decoration: BoxDecoration(
          color: white,
          border: isHovered ? Border.all(color: black38) : null,
          borderRadius: BorderRadius.circular(16),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: black26,
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: const Offset(0, 10),
                  ),
                ]
              : [
                  BoxShadow(
                    color: grey400,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: deviceType == topbar.DeviceScreenType.tablet ? 250 : 350,
              height: deviceType == topbar.DeviceScreenType.tablet ? 200 : 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.imagePath,

                  fit: BoxFit.cover, // Ensures image covers the box properly
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
