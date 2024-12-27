import 'dart:developer';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/commendetail.dart';
import 'package:digibells/container/cardcarousel.dart';
import 'package:digibells/container/contactform.dart';
import 'package:digibells/container/hoverservices.dart';
import 'package:digibells/container/hoverteam.dart';
import 'package:digibells/container/ourteam.dart';
import 'package:digibells/container/services.dart' as services;
import 'package:digibells/container/serviceurl.dart' as Serviceurl;
import 'package:digibells/container/aboutus.dart' as about;
import 'package:digibells/container/hovercard.dart';
import 'package:digibells/container/ourpartner.dart';
import 'package:digibells/container/testimonial.dart';
import 'package:digibells/container/whatdo.dart';
import 'package:digibells/container/whychoose.dart';
import 'package:digibells/footer/bottompart.dart';
import 'package:digibells/topbar/appbar.dart';
import 'package:digibells/topbar/customappbar.dart';
import 'package:digibells/topbar/statusbar.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'topbar/topbarcontent.dart' as topbar;
import 'footer/footer.dart' as footer;
import 'slider/slider.dart' as slider;
import 'package:google_fonts/google_fonts.dart';

class Commonfile extends StatefulWidget {
  final String name;
  const Commonfile({super.key, required this.name});

  @override
  State<Commonfile> createState() => _CommonfileState();
}

class _CommonfileState extends State<Commonfile> {
  @override
  Widget build(BuildContext context) {
    var Screensize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(Screensize);

    double containerWidth = Screensize.width * 0.9; // For mobile
    double Height = 1590;
    if (deviceType == topbar.DeviceScreenType.desktop) {
      Height = 960;
    } else if (deviceType == topbar.DeviceScreenType.tablet) {
      Height = 1160;
    }
    // Set height dynamically
    double containerHeight = 120; // Default for mobile
    if (deviceType == topbar.DeviceScreenType.desktop) {
      containerHeight = 425;
    } else if (deviceType == topbar.DeviceScreenType.tablet) {
      containerHeight = 200;
    }

    return Scaffold(
        appBar: deviceType == topbar.DeviceScreenType.mobile
            ? PreferredSize(
                preferredSize:
                    Size(Screensize.width, 35), // Adjust the height as needed
                child: CustomAppBar(), // Use your CustomAppBar widget here
              )
            : null,
        body: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Container(
            color: grey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  color: grey,
                  child: (deviceType == topbar.DeviceScreenType.mobile ||
                          deviceType == topbar.DeviceScreenType.tablet)
                      ? null
                      : Container(
                          width: Screensize.width,
                          child: topbar.Topbarcontent(),
                        ),
                ),
                Container(
                  color: white,
                  width: Screensize.width,
                  child: Statusbar(),
                ),
                SizedBox(
                    child: deviceType == topbar.DeviceScreenType.mobile
                        ? null
                        : Container(
                            width: Screensize.width,
                            height: 100,
                            child: AppbarforWeb(),
                          )),
                Container(
                  color: black54,
                  width: Screensize.width,
                  height: Screensize.height * 0.4,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(widget.name,
                            style: TextStyle(
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 35
                                        : deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 40
                                            : 50,
                                fontWeight: FontWeight.bold,
                                color: white)),
                        SizedBox(
                          height: 30,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Home  /  ",
                                style: TextStyle(
                                    color: white,
                                    fontSize: 20 // Use default text color
                                    ),
                              ),
                              TextSpan(
                                text: widget.name,
                                style: TextStyle(
                                    color: orange,
                                    fontSize: 20 // Highlighted text
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                Container(
                  width: containerWidth,
                  child: Commendetail(),
                ),
                Container(
                  width: containerWidth,
                  height: deviceType == topbar.DeviceScreenType.mobile
                      ? 1300
                      : deviceType == topbar.DeviceScreenType.tablet
                          ? 700
                          :deviceType == topbar.DeviceScreenType.isWideColumnLayout
                          ? 650
                          : deviceType == topbar.DeviceScreenType.desktop
                                  ? 500
                                  : 700,
                  child: HoverCardPage(),
                ),
                Container(
                  width: containerWidth,
                  height: deviceType == topbar.DeviceScreenType.desktop
                      ? 500
                      : deviceType == topbar.DeviceScreenType.hubmax
                          ? 700
                          : deviceType == topbar.DeviceScreenType.isWideColumnLayout
                              ? 650
                              : deviceType == topbar.DeviceScreenType.tablet
                                  ? 1050
                                  : deviceType == topbar.DeviceScreenType.mobile
                                      ? Screensize.height * 1.3
                                      : Screensize.height,
                  // color: orange, // Background color
                  child: Contactform(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: containerWidth,
                  child: Serviceurl.Serviceurl(),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisSize: MainAxisSize
                      .min, // Ensures Column height wraps its content
                  children: [
                    Container(
                      color: Colors.black,
                      width: double.infinity, // Ensure it spans the full width
                      child: footer.Footer(),
                    ),
                    Divider(
                      color: Colors.white54,
                      height: 0, // Ensures no spacing from the Divider
                      thickness: 0.5, // Set divider thickness
                    ),
                    Container(
                      color: Colors.black,
                      width: double.infinity,
                      child: Bottompart(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
