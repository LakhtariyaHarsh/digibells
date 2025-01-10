import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/responsive.dart' as res;

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mobileView = Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Image.asset(
            "assets/logo1.jfif",
            fit: BoxFit.cover,
          ),
        ),
        _buildContentSection(context, isMobile: true),
      ],
    );

    Widget tabletView = Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Image.asset(
            "assets/logo1.jfif",
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        _buildContentSection(context, isTablet: true),
      ],
    );

    Widget desktopView = Row(
      mainAxisAlignment:  MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Image Section
        Expanded(
          flex: 50,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset(
              "assets/logo1.jfif",
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Right Content Section
        Expanded(
          flex: 50,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: _buildContentSection(context),
          ),
        ),
      ],
    );

    return res.Responsive(
      mobile: mobileView,
      tablet: tabletView,
      desktop: desktopView,
    );
  }

  Widget _buildContentSection(BuildContext context,
      {bool isMobile = false, bool isTablet = false}) {
    double fontSizeTitle = isMobile
        ? 30
        : isTablet
            ? 35
            : 40;
    double fontSizeBody = isMobile
        ? 15
        : isTablet
            ? 17
            : 18;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "ABOUT US",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: orange,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 3, width: 40, color: blue),
                const SizedBox(height: 10),
                Container(height: 1.5, width: 60, color: blue),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "#1 Digital and Ecommerce Solutions With ",
                style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "10 Years ",
                style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.bold,
                  color: orange,
                ),
              ),
              TextSpan(
                text: "Of Experience",
                style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        AutoSizeText(
          "Welcome to DigitalSpark Team, your trusted partner in navigating the dynamic world of eCommerce! Our mission is to empower businesses to thrive online by providing expert management services tailored specifically for leading platforms such as Amazon, Flipkart, and Meesho.",
          style: TextStyle(fontSize: fontSizeBody, color: black54),
        ),
        const SizedBox(height: 20),
        AutoSizeText(
          "With a passionate team of eCommerce specialists, we understand the unique challenges faced by online sellers. Our goal is to simplify the complexities of managing your eCommerce presence, enabling you to focus on what you do best—growing your business.",
          style: TextStyle(fontSize: fontSizeBody, color: black54),
        ),
        const SizedBox(height: 20),
        AutoSizeText(
          "At DigitalSpark Team, we believe in a collaborative approach. Our success is rooted in understanding your unique needs and crafting strategies that align with your goals.",
          style: TextStyle(fontSize: fontSizeBody, color: black54),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
