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

    double containerWidth = screenSize.width * 0.9;
    double containerHeight = screenSize.height * 0.4;
    if (deviceType == topbar.DeviceScreenType.desktop) {
      containerHeight = 425;
    } else if (deviceType == topbar.DeviceScreenType.tablet) {
      containerHeight = 300;
    } else if (deviceType == topbar.DeviceScreenType.mobile) {
      containerHeight = 120;
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
              height: screenSize.height * 1.5,
              // color: orange, // Background color
              child: about.Aboutus(),
            ),
            Container(
              width: containerWidth,
              child: Ourpartner(),
            ),
            Container(
              width: containerWidth,
              height: screenSize.height * 1.89,
              child: HoverCardPage(),
            ),
            Container(
              width: containerWidth,
              child: services.Services(),
            ),
            _buildServiceSections(screenSize, containerWidth),
            Container(
              width: containerWidth,
              height: screenSize.height * 3.5,
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
                    height: 60,
                    child: CustomAppBar(),
                  )),
                  Container(
                    width: containerWidth,
                    height: screenSize.height * 0.3,
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
                    height: screenSize.height * 0.83,
                    // color: orange, // Background color
                    child: about.Aboutus(),
                  ),
                  Container(
                    width: containerWidth,
                    child: Ourpartner(),
                  ),
                  Container(
                    width: containerWidth,
                    height: screenSize.height * 0.6,
                    child: HoverCardPage(),
                  ),
                  Container(
                    width: containerWidth,
                    child: services.Services(),
                  ),
                  _buildServiceSections(screenSize, containerWidth),
                  Container(
                    width: containerWidth,
                    height: screenSize.height,
                    child: HoverCardServicePage(),
                  ),
                  Container(
                    width: containerWidth,
                    height: screenSize.height * 0.95,
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
                    height: screenSize.height * 0.6,
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
                    height: screenSize.height * 0.75,
                    // color: orange, // Background color
                    child: about.Aboutus(),
                  ),
                  Container(
                    width: containerWidth,
                    child: Ourpartner(),
                  ),
                  Container(
                    width: containerWidth,
                    height: deviceType == DeviceScreenType.desktop ?screenSize.height * 0.5 : screenSize.height *  0.75,
                    child: HoverCardPage(),
                  ),
                  Container(
                    width: containerWidth,
                    child: services.Services(),
                  ),
                  _buildServiceSections(screenSize, containerWidth),
                  Container(
                    width: containerWidth,
                    height:deviceType == DeviceScreenType.desktop ?screenSize.height * 1.1 : screenSize.height * 1.4,
                    child: HoverCardServicePage(),
                  ),
                  Container(
                    width: containerWidth,
                    height: screenSize.height * 0.9,
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
                    height: deviceType == DeviceScreenType.desktop ?screenSize.height * 0.5 : screenSize.height * 0.9,
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
      children: [
        Container(
          width: containerWidth,
          height: deviceType == topbar.DeviceScreenType.tablet
              ? screenSize.height * 0.3
              : deviceType == topbar.DeviceScreenType.mobile
                  ? screenSize.height * 0.6
                  : screenSize.height * 0.5,
          child: Service1(),
        ),
        Container(
          width: containerWidth,
          height: deviceType == topbar.DeviceScreenType.tablet
              ? screenSize.height * 0.3
              : deviceType == topbar.DeviceScreenType.mobile
                  ? screenSize.height * 0.6
                  : screenSize.height * 0.5,
          child: Service2(),
        ),
        Container(
          width: containerWidth,
          height: deviceType == topbar.DeviceScreenType.tablet
              ? screenSize.height * 0.3
              : deviceType == topbar.DeviceScreenType.mobile
                  ? screenSize.height * 0.6
                  : screenSize.height * 0.5,
          child: Service3(),
        ),
        SizedBox(
          height: deviceType == topbar.DeviceScreenType.mobile ? 20 : 0,
        ),
        Container(
          width: containerWidth,
          height: deviceType == topbar.DeviceScreenType.tablet
              ? screenSize.height * 0.3
              : deviceType == topbar.DeviceScreenType.mobile
                  ? screenSize.height * 0.7
                  : screenSize.height * 0.5,
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
