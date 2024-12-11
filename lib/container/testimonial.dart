import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Testimonial extends StatefulWidget {
  const Testimonial({super.key});

  @override
  State<Testimonial> createState() => _TestimonialState();
}

class _TestimonialState extends State<Testimonial> {
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
                "Testimonial",
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
                  text: "What Our Clients Say!",
                  style: TextStyle(
                    fontSize:
                        deviceType == topbar.DeviceScreenType.tablet ? 30 : 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}