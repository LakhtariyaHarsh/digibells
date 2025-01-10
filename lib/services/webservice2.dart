import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Webservice2 extends StatefulWidget {
  const Webservice2({super.key});

  @override
  State<Webservice2> createState() => _Webservice2State();
}

class _Webservice2State extends State<Webservice2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;

    return (isMobile || isTablet)
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Image.asset(
                  "assets/ecommerce.webp",
                  fit: BoxFit.cover,
                  width:
                      double.infinity, // Ensures it fills the container width
                  height: screenSize.height * 0.3, // Adjust height for mobile
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "E-commerce Website Design",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    AutoSizeText(
                      "E-commerce website is a specialized field that plays an important role in the success of your online business. It directly impacts user engagement, trust, and ultimately conversion rates. A well-designed e-commerce website prioritizes user experience, offering intuitive navigation, clear product categorization, and a seamless checkout process. Visual product presentation, high-quality images, and a compelling call to action are key elements that contribute to a user-friendly and effective e-commerce platform.",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    AutoSizeText(
                      "Responsive design is paramount to ensuring a consistent experience across devices and promoting accessibility for a wide range of users. Additionally, security features and transparent policies are essential to building trust among online shoppers. A carefully designed e-commerce website not only improves the overall online shopping experience, but also strengthens your brand's credibility and competitiveness in the digital marketplace. So, what are you waiting for? Contact Desire Div, the best web designing company in Gurgaon, Delhi and promote your product.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            children: [
              // Left Image Section
              Expanded(
                flex: 40,
                child: Image.asset(
                  "assets/ecommerce.webp",
                  fit: BoxFit.cover,
                ),
              ),
              // Right Content Section
              Flexible(
                flex: 60,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: screenSize.height * 0.05, // Adjust dynamically
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "E-commerce Website Design",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      AutoSizeText(
                        "E-commerce website is a specialized field that plays an important role in the success of your online business. It directly impacts user engagement, trust, and ultimately conversion rates. A well-designed e-commerce website prioritizes user experience, offering intuitive navigation, clear product categorization, and a seamless checkout process. Visual product presentation, high-quality images, and a compelling call to action are key elements that contribute to a user-friendly and effective e-commerce platform.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      AutoSizeText(
                        "Responsive design is paramount to ensuring a consistent experience across devices and promoting accessibility for a wide range of users. Additionally, security features and transparent policies are essential to building trust among online shoppers. A carefully designed e-commerce website not only improves the overall online shopping experience, but also strengthens your brand's credibility and competitiveness in the digital marketplace. So, what are you waiting for? Contact Desire Div, the best web designing company in Gurgaon, Delhi and promote your product.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
