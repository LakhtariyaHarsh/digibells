import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;

class Webquality extends StatefulWidget {
  const Webquality({super.key});

  @override
  State<Webquality> createState() => _WebqualityState();
}

class _WebqualityState extends State<Webquality> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Determine image height based on device type
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    return (isMobile || isTablet)
        ? Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width:
                              70, // Set a fixed width for the image or adjust as needed.
                          child: Image.asset("assets/quality.png",
                              fit: BoxFit.contain),
                        ),
                        SizedBox(
                          width: 20, // Adjust spacing.
                        ),
                        Expanded(
                          // Ensures the Column fits within the available space.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Quality website designing",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AutoSizeText(
                                "Our team has the expertise and vision to cater to your unique needs. We understand that every client is distinct, and our solutions are tailored to meet your specific goals & needs.",
                                style: TextStyle(),
                                maxLines: 15,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width:
                              70, // Set a fixed width for the image or adjust as needed.
                          child: Image.asset("assets/expert_team.png",
                              fit: BoxFit.contain),
                        ),
                        SizedBox(
                          width: 20, // Adjust spacing.
                        ),
                        Expanded(
                          // Ensures the Column fits within the available space.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Expert team members",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AutoSizeText(
                                "As a leading website development company in gurgaon, We are a team of highly skilled and creative website designers, who are dedicated to transforming your online presence into a dynamic and engaging platform.F",
                                style: TextStyle(),
                                maxLines: 15,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        : Row(
            children: [
              // Left Content Section
              Expanded(
                flex: 4, // Represents 40% of the total width.
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width:
                              70, // Set a fixed width for the image or adjust as needed.
                          child: Image.asset("assets/quality.png",
                              fit: BoxFit.contain),
                        ),
                        SizedBox(
                          width: 20, // Adjust spacing.
                        ),
                        Expanded(
                          // Ensures the Column fits within the available space.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Quality website designing",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AutoSizeText(
                                "Our team has the expertise and vision to cater to your unique needs. We understand that every client is distinct, and our solutions are tailored to meet your specific goals & needs.",
                                style: TextStyle(),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20, // Adjust the gap size as needed.
              ),
              // Right Form Section
              Expanded(
                flex: 4, // Represents 40% of the total width.
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width:
                              70, // Set a fixed width for the image or adjust as needed.
                          child: Image.asset("assets/expert_team.png",
                              fit: BoxFit.contain),
                        ),
                        SizedBox(
                          width: 20, // Adjust spacing.
                        ),
                        Expanded(
                          // Ensures the Column fits within the available space.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Expert team members",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AutoSizeText(
                                "As a leading website development company in gurgaon, We are a team of highly skilled and creative website designers, who are dedicated to transforming your online presence into a dynamic and engaging platform.",
                                style: TextStyle(),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
