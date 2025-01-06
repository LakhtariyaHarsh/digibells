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
          spacing: 20,
          runSpacing: 20,
          children: [
            buildHoverCard("1000 + Clients", "assets/service-1.jpg"),
            buildHoverCard("Ecommerce Packages", "assets/service-2.jpg"),
            buildHoverCard("Guaranteed Growth", "assets/service-3.jpg"),
          ],
        ),
      ),
    );
  }

  Widget buildHoverCard(String title, String imagePath) {
    return HoverServiceCard(
      title: title,
      imagePath: imagePath,
    );
  }
}

class HoverServiceCard extends StatefulWidget {
  final String title;
  final String imagePath;

  const HoverServiceCard(
      {Key? key, required this.title, required this.imagePath})
      : super(key: key);

  @override
  _HoverServiceCardState createState() => _HoverServiceCardState();
}

class _HoverServiceCardState extends State<HoverServiceCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: isTablet ? 300 : 400,
        height: isTablet ? 300 : 350,
        margin: EdgeInsets.only(bottom: isHovered ? 20 : 0),
        decoration: BoxDecoration(
          color: white,
          border: isHovered ? Border.all(color: black38) : null,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: isHovered ? black26 : grey400,
              blurRadius: isHovered ? 20 : 10,
              spreadRadius: isHovered ? 2 : 1,
              offset: Offset(0, isHovered ? 10 : 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: isTablet ? 250 : 350,
              height: isTablet ? 200 : 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
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
