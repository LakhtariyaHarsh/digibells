import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Webservice1 extends StatefulWidget {
  const Webservice1({super.key});

  @override
  State<Webservice1> createState() => _Webservice1State();
}

class _Webservice1State extends State<Webservice1> {
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
                  "assets/creative-website.webp",
                  fit: BoxFit.cover,
                  width: double.infinity, // Ensure it fills the container
                  height: screenSize.height * 0.3, // Adjust for mobile/tablet
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Creative and Unique Website Designs",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    AutoSizeText(
                      "Undoubtedly, Desire Div is an amazing website designing company in Gurgaon. It creates an innovative or creative website that attracts your customers and leaves a lasting impression. As we all know, a creative website plays an important role in grabbing the attention of online visitors and improving the user experience. In a digital environment where first impressions matter, a visually appealing and innovative website designing can help your brand stand out.",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    AutoSizeText(
                      "Creative design focuses not only on aesthetics, but also on functionality and user interface to ensure seamless navigation and accessibility. Elements like unique layouts, attractive graphics, and thoughtful use of color schemes contribute to the overall appeal of your website. Additionally, responsive design principles are important to adapt to different devices and ensure a pleasant user experience.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            children: [
              // Left Text Section
              Flexible(
                flex: 60,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: screenSize.height * 0.05, // Adjust dynamically
                    left: 16.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Creative and Unique Website Designs",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      AutoSizeText(
                        "Undoubtedly, Desire Div is an amazing website designing company in Gurgaon. It creates an innovative or creative website that attracts your customers and leaves a lasting impression. As we all know, a creative website plays an important role in grabbing the attention of online visitors and improving the user experience. In a digital environment where first impressions matter, a visually appealing and innovative website designing can help your brand stand out.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      AutoSizeText(
                        "Creative design focuses not only on aesthetics, but also on functionality and user interface to ensure seamless navigation and accessibility. Elements like unique layouts, attractive graphics, and thoughtful use of color schemes contribute to the overall appeal of your website. Additionally, responsive design principles are important to adapt to different devices and ensure a pleasant user experience.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),

              // Right Image Section
              Expanded(
                flex: 40,
                child: Image.asset(
                  "assets/creative-website.webp",
                  fit: BoxFit.cover, // Maintain aspect ratio
                ),
              ),
            ],
          );
  }
}
