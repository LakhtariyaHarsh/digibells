import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Whatdo extends StatefulWidget {
  const Whatdo({super.key});

  @override
  State<Whatdo> createState() => _WhatdoState();
}

class _WhatdoState extends State<Whatdo> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        AutoSizeText(
              "What We Do",
              style: TextStyle(
                fontSize: deviceType == topbar.DeviceScreenType.mobile
                    ? 28
                    : (deviceType == topbar.DeviceScreenType.tablet ? 28 : 35),
                color: black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            AutoSizeText(
            "Welcome to DigitalSpark Team – Your E-Commerce Management Experts! At DigitalSpark Team, we specialize in providing comprehensive management services tailored for the eCommerce landscape, specifically for leading platforms like Amazon, Flipkart, and Meesho. Our mission is to empower businesses to thrive in the competitive world of online retail by leveraging our expertise in strategic planning, operational efficiency, and digital marketing.",
            style: TextStyle(
              fontSize: deviceType == topbar.DeviceScreenType.mobile
                  ? 15
                  : (deviceType == topbar.DeviceScreenType.tablet ? 15 : 17),
              color: black54,
            ),
          ),
      ],
    );
  }
}