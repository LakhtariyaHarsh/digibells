import 'package:auto_size_text/auto_size_text.dart';
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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'topbar/topbarcontent.dart' as topbar;
import 'footer/footer.dart' as footer;
import 'slider/slider.dart' as slider;
import 'package:google_fonts/google_fonts.dart';

class Redirectaboutus extends StatefulWidget {
  final String name;
  const Redirectaboutus({super.key, required this.name});

  @override
  State<Redirectaboutus> createState() => _RedirectaboutusState();
}

class _RedirectaboutusState extends State<Redirectaboutus> {
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
    var Screensize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(Screensize);

    double containerWidth = Screensize.width * 0.9; // For mobile
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
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
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
                          height: 20,
                        ),
                        AutoSizeText(
                            "Welcome to DigitalSpark Team, your trusted partner in navigating the dynamic world of eCommerce!",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: white)),
                        SizedBox(
                          height: 20,
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
                    )),
                  ),
                  Container(
                    width: containerWidth,
                    height: deviceType == topbar.DeviceScreenType.mobile
                        ? 1300
                        : deviceType == topbar.DeviceScreenType.tablet
                            ? 700
                            : deviceType ==
                                    topbar.DeviceScreenType.isWideColumnLayout
                                ? 650
                                : deviceType == topbar.DeviceScreenType.desktop
                                    ? 500
                                    : 700,
                    child: HoverCardPage(),
                  ),
                  Container(
                    width: containerWidth,
                    height: deviceType == topbar.DeviceScreenType.desktop ||
                            deviceType == topbar.DeviceScreenType.hubmax
                        ? 700
                        : deviceType == topbar.DeviceScreenType.tablet
                            ? Screensize.height * 1.1
                            : deviceType == topbar.DeviceScreenType.mobile
                                ? Screensize.height * 1.5
                                : Screensize.height * 1.1,
                    // color: orange, // Background color
                    child: about.Aboutus(),
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
                            ? 650
                            : 400,
                    child: Hoverteam(),
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
                        width:
                            double.infinity, // Ensure it spans the full width
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
        ],
      ),
    );
  }
}
