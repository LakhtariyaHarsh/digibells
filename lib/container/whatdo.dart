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
            "At Digibells, we specialize in providing digital marketing solutions to help businesses grow and succeed online. Our team of experienced professionals has a deep understanding of the digital landscape, and we offer a wide range of services to help you reach your goals. Whether you're looking to improve your website's visibility in search engine results pages, drive traffic to your website, or increase your social media presence, we have the expertise to help you succeed. Our services include search engine optimization (SEO), pay-per-click (PPC) advertising, social media marketing, email marketing, and more. We take a data-driven approach to digital marketing, using the latest tools and techniques to optimize your campaigns and achieve measurable results. We believe that communication and collaboration are key to success, and we work closely with our clients to ensure that their goals are met and exceeded. At Digibells, we're passionate about helping businesses of all sizes succeed online. Whether you're a small startup or a large enterprise, we have the expertise and experience to help you achieve your goals. Contact us today to learn more about how we can help you grow your business online.",
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