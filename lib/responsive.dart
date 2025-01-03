import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobileDevice(BuildContext context) =>
      MediaQuery.of(context).size.width < 720;

  static bool isTabletDevice(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1280 &&
      MediaQuery.of(context).size.width >= 720;

  static bool isDesktopDevice(BuildContext context) =>
      MediaQuery.of(context).size.width > 1280;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth > 1280) {
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 720) {
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}