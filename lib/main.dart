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
import 'package:digibells/services/service1.dart';
import 'package:digibells/services/service2.dart';
import 'package:digibells/services/service3.dart';
import 'package:digibells/services/service4.dart';
import 'package:digibells/topbar/appbar.dart';
import 'package:digibells/topbar/customappbar.dart';
import 'package:digibells/topbar/statusbar.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'topbar/topbarcontent.dart' as topbar;
import 'footer/footer.dart' as footer;
import 'slider/slider.dart' as slider;
import 'package:google_fonts/google_fonts.dart';
import 'responsive.dart' as res;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Digital Spark Team',
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
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController
        .dispose(); // Dispose the controller when the widget is removed
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0, // Scroll to the top
      duration: const Duration(seconds: 1), // Set animation duration
      curve: Curves.easeInOut, // Set animation curve
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

// Dynamically adjust containerWidth based on the screen size and desktop zoom level
    double containerWidth;

// Check for desktop and apply zoom-out effect
    if (deviceType == topbar.DeviceScreenType.desktop) {
      containerWidth = screenSize.width *
          0.9; // Example of reduced width at zoomed-out state
      if (screenSize.width > 1600 && screenSize.width <=1750) {
        containerWidth =
            screenSize.width * 0.8; // Further adjust for larger resolutions
      } else if (screenSize.width < 1280) {
        containerWidth =
            screenSize.width * 0.85; // Adjust for smaller resolutions
      }else if (screenSize.width > 1750 && screenSize.width <=2000) {
        containerWidth =
            screenSize.width * 0.72; // Adjust for smaller resolutions
      }else if (screenSize.width > 2000 && screenSize.width <=2500) {
        containerWidth =
            screenSize.width * 0.65; // Adjust for smaller resolutions
      }
    } else {
      containerWidth = screenSize.width * 0.9; // Default for other device types
    }

    double containerHeight = 400;
    if (deviceType == topbar.DeviceScreenType.desktop) {
      containerHeight = 425;
    } else if (deviceType == topbar.DeviceScreenType.tablet) {
      containerHeight = 300;
    } else if (deviceType == topbar.DeviceScreenType.mobile) {
      containerHeight = 150;
    }
    return Scaffold(
      appBar: deviceType == topbar.DeviceScreenType.mobile
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 35),
              child: CustomAppBar(),
            )
          : null,
      body: res.Responsive(
        mobile: _buildMobileView(screenSize, containerWidth, containerHeight),
        tablet: _buildTabletView(screenSize, containerWidth, containerHeight),
        desktop: _buildDesktopView(screenSize, containerWidth, containerHeight),
      ),
    );
  }

  Widget _buildMobileView(
      Size screenSize, double containerWidth, double containerHeight) {
    var deviceType = topbar.getDeviceType(screenSize);
    return Stack(children: [
      SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: containerWidth,
              height: containerHeight,
              child: slider.Slider(),
            ),
            Container(
              width: containerWidth,
              child: Whatdo(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: containerWidth,
              height: 950,
              // color: orange, // Background color
              child: about.Aboutus(),
            ),
            Container(
              width: containerWidth,
              child: Ourpartner(),
            ),
            Container(
              width: containerWidth,
              height: 1350,
              child: HoverCardPage(),
            ),
            Container(
              width: containerWidth,
              child: services.Services(),
            ),
            _buildServiceSections(screenSize, containerWidth),
            Container(
              width: containerWidth,
              height: 2300,
              child: HoverCardServicePage(),
            ),
            Container(
              width: containerWidth,
              height: screenSize.height * 1.65,
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
              height: screenSize.height * 1.6,
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
            _buildFooter(screenSize, containerWidth),
          ],
        ),
      ),
      // Floating Action Buttons in Stack
      Positioned(
        right: 20, // Position at bottom-right
        bottom: 20,
        child: FloatingActionButton(
          backgroundColor: blue,
          onPressed: () {
            _scrollToTop();
          },
          tooltip: 'Scroll to Top',
          child: const Icon(
            Icons.arrow_upward,
            color: white,
          ),
        ),
      ),
      Positioned(
        left: 20, // Position at bottom-left
        bottom: 20,
        child: FloatingActionButton(
          backgroundColor: black,
          onPressed: () async {
            final phoneNumber =
                "tel:+91 8076233455"; // Replace with the phone number you want to call
            final url = Uri.parse(phoneNumber);

            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            } else {
              throw "Could not launch $url";
            }
          },
          tooltip: 'Call Now',
          child: const Icon(
            Icons.call,
            color: white,
          ),
        ),
      ),
      Positioned(
        right: 20, // Position at bottom-left
        bottom: 90,
        child: FloatingActionButton(
          backgroundColor: green,
          onPressed: () async {
            final phoneNumber =
                "tel:+91 8076233455"; // Replace with the phone number you want to call
            final url = Uri.parse(phoneNumber);

            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            } else {
              throw "Could not launch $url";
            }
          },
          tooltip: 'Open WhatsApp',
          child: const Icon(
            FontAwesomeIcons.whatsapp,
            color: white,
          ),
        ),
      ),
    ]);
  }

  Widget _buildTabletView(
      Size screenSize, double containerWidth, double containerHeight) {
    var deviceType = topbar.getDeviceType(screenSize);
    return Stack(children: [
      SingleChildScrollView(
          controller: _scrollController,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              color: grey,
              child: Column(
                children: [
                  Container(
                    color: white,
                    width: screenSize.width,
                    child: Statusbar(),
                  ),
                  SizedBox(
                      child: Container(
                    width: screenSize.width,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: containerWidth,
                    height: 860,
                    child: about.Aboutus(),
                  ),
                  Container(
                    width: containerWidth,
                    child: Ourpartner(),
                  ),
                  Container(
                    width: containerWidth,
                    height: 700,
                    child: HoverCardPage(),
                  ),
                  Container(
                    width: containerWidth,
                    child: services.Services(),
                  ),
                  _buildServiceSections(screenSize, containerWidth),
                  Container(
                    width: containerWidth,
                    height: 1100,
                    child: HoverCardServicePage(),
                  ),
                  Container(
                    width: containerWidth,
                    height: deviceType == topbar.DeviceScreenType.hubmax
                        ? 750
                        : 1000,
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
                    height: deviceType == topbar.DeviceScreenType.hubmax
                        ? 700
                        : 1100,
                    child: Hoverteam(),
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
                    height: 40,
                  ),
                  _buildFooter(screenSize, containerWidth),
                ],
              ),
            ),
          ])),
      // Floating Action Buttons in Stack
      Positioned(
        right: 20, // Position at bottom-right
        bottom: 20,
        child: FloatingActionButton(
          backgroundColor: blue,
          onPressed: () {
            _scrollToTop();
          },
          tooltip: 'Scroll to Top',
          child: const Icon(
            Icons.arrow_upward,
            color: white,
          ),
        ),
      ),
      Positioned(
        left: 20, // Position at bottom-left
        bottom: 20,
        child: FloatingActionButton(
          backgroundColor: black,
          onPressed: () async {
            final phoneNumber =
                "tel:+91 8076233455"; // Replace with the phone number you want to call
            final url = Uri.parse(phoneNumber);

            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            } else {
              throw "Could not launch $url";
            }
          },
          tooltip: 'Call Now',
          child: const Icon(
            Icons.call,
            color: white,
          ),
        ),
      ),
      Positioned(
        right: 20, // Position at bottom-left
        bottom: 90,
        child: FloatingActionButton(
          backgroundColor: green,
          onPressed: () async {
            final phoneNumber =
                "tel:+91 8076233455"; // Replace with the phone number you want to call
            final url = Uri.parse(phoneNumber);

            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            } else {
              throw "Could not launch $url";
            }
          },
          tooltip: 'Open WhatsApp',
          child: const Icon(
            FontAwesomeIcons.whatsapp,
            color: white,
          ),
        ),
      ),
    ]);
  }

  Widget _buildDesktopView(
      Size screenSize, double containerWidth, double containerHeight) {
    var deviceType = topbar.getDeviceType(screenSize);
    return Stack(children: [
      SingleChildScrollView(
          controller: _scrollController,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              color: grey,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    color: grey,
                    child: Container(
                      width: screenSize.width,
                      child: topbar.Topbarcontent(),
                    ),
                  ),
                  Container(
                    color: white,
                    width: screenSize.width,
                    child: Statusbar(),
                  ),
                  SizedBox(
                      child: Container(
                    width: screenSize.width,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: containerWidth,
                    height: 730,
                    // color: orange, // Background color
                    child: about.Aboutus(),
                  ),
                  Container(
                    width: containerWidth,
                    child: Ourpartner(),
                  ),
                  Container(
                    width: containerWidth,
                    height:
                        deviceType == topbar.DeviceScreenType.isWideColumnLayout || screenSize.width > 1600
                            ? 650
                            : 400,
                    child: HoverCardPage(),
                  ),
                  Container(
                    width: containerWidth,
                    child: services.Services(),
                  ),
                  _buildServiceSections(screenSize, containerWidth),
                  Container(
                    width: containerWidth,
                    height: screenSize.width > 1600 && screenSize.width < 1908 ? 1200: screenSize.width >= 1908&& screenSize.width < 2000 ? 800 : screenSize.width >= 2000 ? 1200:800,
                    child: HoverCardServicePage(),
                  ),
                  Container(
                    width: containerWidth,
                    height: 700,
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
                    height: deviceType == topbar.DeviceScreenType.desktop
                        ? 400
                        : deviceType ==
                                topbar.DeviceScreenType.isWideColumnLayout
                            ? 700
                            : screenSize.width > 1600 && screenSize.width <= 1653 ? 700:500,
                    child: Hoverteam(),
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
                    height: 30,
                  ),
                  _buildFooter(screenSize, containerWidth),
                ],
              ),
            ),
          ])),
      // Floating Action Buttons in Stack
      Positioned(
        right: 20, // Position at bottom-right
        bottom: 20,
        child: FloatingActionButton(
          backgroundColor: blue,
          onPressed: () {
            _scrollToTop();
          },
          tooltip: 'Scroll to Top',
          child: const Icon(
            Icons.arrow_upward,
            color: white,
          ),
        ),
      ),
      Positioned(
        left: 20, // Position at bottom-left
        bottom: 20,
        child: FloatingActionButton(
          backgroundColor: black,
          onPressed: () async {
            final phoneNumber =
                "tel:+91 8076233455"; // Replace with the phone number you want to call
            final url = Uri.parse(phoneNumber);

            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            } else {
              throw "Could not launch $url";
            }
          },
          tooltip: 'Call Now',
          child: const Icon(
            Icons.call,
            color: white,
          ),
        ),
      ),
      Positioned(
        right: 20, // Position at bottom-left
        bottom: 90,
        child: FloatingActionButton(
          backgroundColor: green,
          onPressed: () async {
            final phoneNumber =
                "tel:+91 8076233455"; // Replace with the phone number you want to call
            final url = Uri.parse(phoneNumber);

            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            } else {
              throw "Could not launch $url";
            }
          },
          tooltip: 'Open WhatsApp',
          child: const Icon(
            FontAwesomeIcons.whatsapp,
            color: white,
          ),
        ),
      ),
    ]);
  }

  Widget _buildCommonSections(
      Size screenSize, double containerWidth, double containerHeight) {
    return Column(
      children: [
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
          height: screenSize.height * 1.1,
          child: about.Aboutus(),
        ),
        Container(
          width: containerWidth,
          child: Ourpartner(),
        ),
      ],
    );
  }

  Widget _buildServiceSections(Size screenSize, double containerWidth) {
    var deviceType = topbar.getDeviceType(screenSize);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: containerWidth,
          height: deviceType == topbar.DeviceScreenType.tablet ||
                  deviceType == topbar.DeviceScreenType.hubmax
              ? 350
              : deviceType == res.Responsive.isMobileDevice
                  ? 600
                  : deviceType == topbar.DeviceScreenType.desktop
                      ? 400
                      : 600,
          child: Service1(),
        ),
        Container(
          width: containerWidth,
          height: deviceType == topbar.DeviceScreenType.tablet ||
                  deviceType == topbar.DeviceScreenType.hubmax
              ? 300
              : deviceType == res.Responsive.isMobileDevice
                  ? 500
                  : deviceType == topbar.DeviceScreenType.desktop
                      ? 400
                      : 500,
          child: Service2(),
        ),
        Container(
          width: containerWidth,
          height: deviceType == topbar.DeviceScreenType.tablet ||
                  deviceType == topbar.DeviceScreenType.hubmax
              ? 300
              : deviceType == res.Responsive.isMobileDevice
                  ? 500
                  : deviceType == topbar.DeviceScreenType.desktop
                      ? 400
                      : 500,
          child: Service3(),
        ),
        Container(
          width: containerWidth,
          height: deviceType == topbar.DeviceScreenType.tablet ||
                  deviceType == topbar.DeviceScreenType.hubmax
              ? 400
              : deviceType == res.Responsive.isMobileDevice
                  ? 500
                  : deviceType == topbar.DeviceScreenType.desktop
                      ? 400
                      : 500,
          child: Service4(),
        ),
      ],
    );
  }

  Widget _buildFooter(Size screenSize, double containerWidth) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          child: footer.Footer(),
        ),
        Divider(
          color: Colors.white54,
          height: 0,
          thickness: 0.5,
        ),
        Container(
          color: Colors.black,
          width: double.infinity,
          child: Bottompart(),
        ),
      ],
    );
  }
}
