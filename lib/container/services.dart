import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 1.5, // Divider height
                    width: 40, // Fixed width
                    color: blue, // Divider color
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 2.5, // Divider height
                    width: 60, // Fixed width
                    color: blue, // Divider color
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "SERVICES",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: orange, // Blue title to match the design
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 1.5, // Divider height
                    width: 40, // Fixed width
                    color: blue, // Divider color
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 2.5, // Divider height
                    width: 60, // Fixed width
                    color: blue, // Divider color
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "We Focuse On Making The Best In All Sectors",
                  style: TextStyle(
                    fontSize:
                        deviceType == topbar.DeviceScreenType.tablet ? 30 : 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AutoSizeText(
            "At Digibells, we're focused on delivering the best digital marketing and ecommerce solutions across all sectors. Our team of experts is committed to staying ahead of the curve and delivering innovative solutions that help businesses succeed online. Whether you're looking to improve your website's visibility in search engine results pages, drive traffic to your website, or increase your social media presence, we have the expertise and experience to help you achieve your goals. Contact us today to learn more about how we can help your business grow and succeed online.",
            style: TextStyle(
              fontSize: deviceType == topbar.DeviceScreenType.mobile
                  ? 15
                  : (deviceType == topbar.DeviceScreenType.tablet ? 15 : 17),
              color: black54,
            ),
          ),
        ],
      ),
    ));
  }
}
