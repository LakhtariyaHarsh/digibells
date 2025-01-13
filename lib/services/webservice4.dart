import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Webservice4 extends StatefulWidget {
  const Webservice4({super.key});

  @override
  State<Webservice4> createState() => _Webservice4State();
}

class _Webservice4State extends State<Webservice4> {
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
                  "assets/cms.webp",
                  fit: BoxFit.cover,
                  width:
                      double.infinity, // Ensures it fills the container width
                  height: screenSize.height * 0.3, // Adjust height for mobile
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
                      "Content Management",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    AutoSizeText(
                      "The best thing about a website is the content that attracts users. Content management plays a key role in optimizing the user experience. The core of content management is the efficient preparation of text, images, or multimedia elements so that they are relevant, up-to-date, and easily accessible. This process is especially important for websites where engaging and dynamic content is key to attracting and retaining viewers. Our content team delivers engaging, easy-to-read content that engages your customers. We also update website content from time to time to bring you something new to improve your online presence.",
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
              // Left Image Section
              Flexible(
                flex: 30,
                child: Center(
                  child: Image.asset(
                    "assets/cms.webp",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Right Content Section
              Flexible(
                flex: 30,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: screenSize.height * 0.05, // Adjust dynamically
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Content Management",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      AutoSizeText(
                        "The best thing about a website is the content that attracts users. Content management plays a key role in optimizing the user experience. The core of content management is the efficient preparation of text, images, or multimedia elements so that they are relevant, up-to-date, and easily accessible. This process is especially important for websites where engaging and dynamic content is key to attracting and retaining viewers. Our content team delivers engaging, easy-to-read content that engages your customers. We also update website content from time to time to bring you something new to improve your online presence.",
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
