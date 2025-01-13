import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Webservice3 extends StatefulWidget {
  const Webservice3({super.key});

  @override
  State<Webservice3> createState() => _Webservice3State();
}

class _Webservice3State extends State<Webservice3> {
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
                padding: const EdgeInsets.only(right: 40.0, bottom: 40),
                child: Image.asset(
                  "assets/mobile-app.webp",
                  fit: BoxFit.cover,
                  width: double.infinity, // Ensure it fills the container
                  height: screenSize.height * 0.3, // Adjust for mobile/tablet
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Mobile App Development",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    AutoSizeText(
                      "In a world where mobile phones have become a part of everyday life, companies are using mobile apps to connect with their audiences. We provide you with user-friendly, attractive and secure applications to help you grow your business. The application development process requires creativity, technical expertise and versatility towards new trends and we are the best website designing company in Gurgaon. We know that every user has different application needs and our team of experts is ready to meet them all for businesses and individuals.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left Text Section
              Flexible(
                flex: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Mobile App Development",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    AutoSizeText(
                      "In a world where mobile phones have become a part of everyday life, companies are using mobile apps to connect with their audiences. We provide you with user-friendly, attractive and secure applications to help you grow your business. The application development process requires creativity, technical expertise and versatility towards new trends and we are the best website designing company in Gurgaon. We know that every user has different application needs and our team of experts is ready to meet them all for businesses and individuals.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),

              // Right Image Section
              Flexible(
                flex: 30,
                child: Center(
                  child: Image.asset(
                    "assets/mobile-app.webp",
                    fit: BoxFit.cover, // Maintain aspect ratio
                  ),
                ),
              ),
            ],
          );
  }
}
