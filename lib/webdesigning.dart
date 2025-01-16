import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/container/amazonpageintro.dart';
import 'package:digibells/container/detailwebdesigning.dart';
import 'package:digibells/container/howwebdesign.dart';
import 'package:digibells/container/serviceurl.dart' as Serviceurl;
import 'package:digibells/container/webdesigningintro.dart';
import 'package:digibells/container/webquality.dart';
import 'package:digibells/container/whychoose.dart';
import 'package:digibells/container/whychooseweb.dart';
import 'package:digibells/footer/bottompart.dart';
import 'package:digibells/services/service1.dart';
import 'package:digibells/services/webservice1.dart';
import 'package:digibells/services/webservice2.dart';
import 'package:digibells/services/webservice3.dart';
import 'package:digibells/services/webservice4.dart';
import 'package:digibells/topbar/appbar.dart';
import 'package:digibells/topbar/customappbar.dart';
import 'package:digibells/topbar/statusbar.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'topbar/topbarcontent.dart' as topbar;
import 'footer/footer.dart' as footer;
import 'package:digibells/container/amazonfeecalc.dart';
import 'responsive.dart' as res;

class Webdesigning extends StatefulWidget {
  const Webdesigning({super.key});

  @override
  State<Webdesigning> createState() => _WebdesigningState();
}

class _WebdesigningState extends State<Webdesigning> {
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
      if (screenSize.width > 1600 && screenSize.width <= 1750) {
        containerWidth =
            screenSize.width * 0.8; // Further adjust for larger resolutions
      } else if (screenSize.width < 1280) {
        containerWidth =
            screenSize.width * 0.85; // Adjust for smaller resolutions
      } else if (screenSize.width > 1750 && screenSize.width <= 2000) {
        containerWidth =
            screenSize.width * 0.72; // Adjust for smaller resolutions
      } else if (screenSize.width > 2000 && screenSize.width <= 2500) {
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
      appBar: deviceType == topbar.DeviceScreenType.mobile ||
              deviceType == topbar.DeviceScreenType.tablet
          ? AppBar(
              title: Text(
                "MENU",
                style: TextStyle(color: white),
              ),
              iconTheme: IconThemeData(
                color: Colors.white, // Set the drawer icon color to white
              ),
              backgroundColor: orange,
            )
          : null,
      drawer: CustomDrawer(),
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

    return Stack(
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 1800,
                width: screenSize.width,
                child: Webdesigningintro(),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: containerWidth,
                child: Webquality(),
              ),
              SizedBox(height: 30),
              Container(
                width: containerWidth,
                child: Detailwebdesigning(),
              ),
              SizedBox(height: 30),
              _buildServiceSections(screenSize, containerWidth),
              SizedBox(height: 30),
              Container(
                width: containerWidth,
                child: Howwebdesign(),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.black87,
                child: Whychooseweb(),
              ),
              SizedBox(height: 30),
              Container(
                width: containerWidth,
                child: Serviceurl.Serviceurl(),
              ),
              SizedBox(height: 20),
              _buildFooter(screenSize, containerWidth),
            ],
          ),
        ),
        // Floating Action Buttons in Stack
        Positioned(
          right: 20, // Position at bottom-right
          bottom: 20,
          child: FloatingActionButton(
            heroTag: 'scrollToTop', // Unique tag for this button
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
            heroTag: 'callNow', // Unique tag for this button
            backgroundColor: black,
            onPressed: () async {
              const phoneNumber = "tel:+91 9643368309 / 8882822264";
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
            heroTag: 'openWhatsApp', // Unique tag for this button
            backgroundColor: green,
            onPressed: () async {
              const whatsappUrl = "https://wa.me/+919643368309";
              final url = Uri.parse(whatsappUrl);

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
    );
  }

  Widget _buildTabletView(
      Size screenSize, double containerWidth, double containerHeight) {
    var deviceType = topbar.getDeviceType(screenSize);
    return Stack(children: [
      SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            deviceType == topbar.DeviceScreenType.hubmax
                ? Container(
                    color: white,
                    width: screenSize.width,
                    child: Statusbar(),
                  )
                : SizedBox(),
            deviceType == topbar.DeviceScreenType.hubmax
                ? SizedBox(
                    child: Container(
                    width: screenSize.width,
                    child: AppbarforWeb(),
                  ))
                : SizedBox(),
            SizedBox(
              height:
                  deviceType == topbar.DeviceScreenType.hubmax ? 1000 : 1300,
              width: screenSize.width,
              child: Webdesigningintro(),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              // height: 850,
              width: containerWidth,
              child: Webquality(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: containerWidth,
              child: Detailwebdesigning(),
            ),
            SizedBox(
              height: 50,
            ),
            _buildServiceSections(screenSize, containerWidth),
            SizedBox(
              height: 30,
            ),
            Container(
              width: containerWidth,
              child: Howwebdesign(),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.black87,
              child: Whychooseweb(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: containerWidth,
              child: Serviceurl.Serviceurl(),
            ),
            SizedBox(
              height: 20,
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
          heroTag: 'scrollToTop', // Unique tag for this button
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
          heroTag: 'callNow', // Unique tag for this button
          backgroundColor: black,
          onPressed: () async {
            const phoneNumber = "tel:+91 9643368309 / 8882822264";
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
          heroTag: 'openWhatsApp', // Unique tag for this button
          backgroundColor: green,
          onPressed: () async {
            const whatsappUrl = "https://wa.me/+919643368309";
            final url = Uri.parse(whatsappUrl);

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            SizedBox(
              height: 900,
              width: screenSize.width,
              child: Webdesigningintro(),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              // height: 850,
              width: containerWidth,
              child: Webquality(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: containerWidth,
              child: Detailwebdesigning(),
            ),
            SizedBox(
              height: 50,
            ),
            _buildServiceSections(screenSize, containerWidth),
            SizedBox(
              height: 100,
            ),
            Container(
              width: containerWidth,
              child: Howwebdesign(),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              color: Colors.black87,
              child: Whychooseweb(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: containerWidth,
              child: Serviceurl.Serviceurl(),
            ),
            SizedBox(
              height: 20,
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
          heroTag: 'scrollToTop', // Unique tag for this button
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
          heroTag: 'callNow', // Unique tag for this button
          backgroundColor: black,
          onPressed: () async {
            const phoneNumber = "tel:+91 9643368309 / 8882822264";
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
          heroTag: 'openWhatsApp', // Unique tag for this button
          backgroundColor: green,
          onPressed: () async {
            const whatsappUrl = "https://wa.me/+919643368309";
            final url = Uri.parse(whatsappUrl);

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

  Widget _buildServiceSections(Size screenSize, double containerWidth) {
    var deviceType = topbar.getDeviceType(screenSize);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: containerWidth,
          child: Webservice1(),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          width: containerWidth,
          child: Webservice2(),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          width: containerWidth,
          child: Webservice3(),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          width: containerWidth,
          child: Webservice4(),
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
