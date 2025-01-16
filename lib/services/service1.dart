import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Service1 extends StatefulWidget {
  const Service1({super.key});

  @override
  State<Service1> createState() => _Service1State();
}

class _Service1State extends State<Service1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;

    return (isMobile)
        ? Column(
            children: [
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, top: 40, bottom: 40),
                  child: Image.asset(
                    "assets/features-1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: AutoSizeText(
                  "At Digital Spark Team, we're focused on delivering the best digital marketing and ecommerce solutions across all sectors. Our team of experts is committed to staying ahead of the curve and delivering innovative solutions that help businesses succeed online. Whether you're looking to improve your website's visibility in search engine results pages, drive traffic to your website, or increase your social media presence, we have the expertise and experience to help you achieve your goals. Contact us today to learn more about how we can help your business grow and succeed online.",
                  style: TextStyle(
                    fontSize: deviceType == topbar.DeviceScreenType.mobile
                        ? 15
                        : (deviceType == topbar.DeviceScreenType.tablet
                            ? 15
                            : 17),
                    color: black54,
                  ),
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
                  "assets/features-1.png",
                  fit: BoxFit.cover, // Maintain aspect ratio
                ),
              ),

              // Right Content Section
              Flexible(
                flex: 60,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height *
                        0.05, // Adjust dynamically
                  ),
                  child: AutoSizeText(
                    "At Digital Spark Team, we're focused on delivering the best digital marketing and ecommerce solutions across all sectors. Our team of experts is committed to staying ahead of the curve and delivering innovative solutions that help businesses succeed online. Whether you're looking to improve your website's visibility in search engine results pages, drive traffic to your website, or increase your social media presence, we have the expertise and experience to help you achieve your goals. Contact us today to learn more about how we can help your business grow and succeed online.",
                    style: TextStyle(
                      fontSize: deviceType == topbar.DeviceScreenType.mobile
                          ? 15
                          : (deviceType == topbar.DeviceScreenType.tablet
                              ? 15
                              : 17),
                      color: black54,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
