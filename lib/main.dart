import 'dart:developer';
import 'package:digibells/app_router.dart';
import 'package:digibells/container/cardcarousel.dart';
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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DigiBells',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false, // Disable debug banner.
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var Screensize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(Screensize);

    double containerWidth = Screensize.width * 0.9; // For mobile
    double Height = 1700;
    if (deviceType == topbar.DeviceScreenType.desktop) {
      Height = 980;
    } else if (deviceType == topbar.DeviceScreenType.hubmax) {
      Height = 1130;
    } else if (deviceType == topbar.DeviceScreenType.tablet) {
      Height = 1420;
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
                        : deviceType == topbar.DeviceScreenType.tablet
                            ? Container(
                                width: Screensize.width,
                                height: 60,
                                child: CustomAppBar(),
                              )
                            : Container(
                                width: Screensize.width,
                                height: 100,
                                child: AppbarforWeb(),
                              )),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  child: slider.Slider(),
                ),
                Container(
                  width: containerWidth,
                  child: Whatdo(),
                ),
                Container(
                  width: containerWidth,
                  height: Height,
                  // color: orange, // Background color
                  child: about.Aboutus(),
                ),
                Container(
                  width: containerWidth,
                  child: Ourpartner(),
                ),
                Container(
                  width: containerWidth,
                  height: deviceType == topbar.DeviceScreenType.mobile
                      ? 1300
                      :  deviceType == topbar.DeviceScreenType.tablet
                      ? 700 : deviceType == topbar.DeviceScreenType.hubmax 
                      ? Screensize.height * 0.9 : deviceType == topbar.DeviceScreenType.desktop
                      ? 700: 500,
                  child: HoverCardPage(),
                ),
                Container(
                  width: containerWidth,
                  child: services.Services(),
                ),
                Container(
                  width: containerWidth,
                  height: deviceType == topbar.DeviceScreenType.mobile
                      ? 2300
                      : deviceType == topbar.DeviceScreenType.tablet
                          ? 1000: deviceType == topbar.DeviceScreenType.hubmax 
                      ? Screensize.height * 1.7 : deviceType == topbar.DeviceScreenType.desktop
                          ? 1100: 900,
                  child: HoverCardServicePage(),
                ),
                Container(
                  width: containerWidth,
                  height: deviceType == topbar.DeviceScreenType.desktop || deviceType == topbar.DeviceScreenType.hubmax 
                      ? 750 
                      : deviceType == topbar.DeviceScreenType.tablet
                          ? 1250
                          : 1250,
                  // color: orange, // Background color
                  child: Whychoose(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: containerWidth,
                  child: Ourteam(),
                ),
                Container(
                  width: containerWidth,
                  height: deviceType == topbar.DeviceScreenType.mobile
                      ? 1100
                      : deviceType == topbar.DeviceScreenType.tablet
                          ? 650: deviceType == topbar.DeviceScreenType.hubmax 
                      ? Screensize.height * 0.9 : 400,
                  child: Hoverteam(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: containerWidth,
                  child: Testimonial(),
                ),
                Container(
                  width: containerWidth,
                  height: 300,
                  child: Cardcarousel(),
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
