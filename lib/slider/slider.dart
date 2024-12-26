import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;


class Slider extends StatefulWidget {
  const Slider({super.key});

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  final List<Map<String, dynamic>> imageLists = [
    {"id": 1, "image_path": 'assets/banner-1.png'},
    {"id": 2, "image_path": 'assets/banner-2.png'},
    {"id": 3, "image_path": 'assets/banner-3.png'},
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Determine screen size and device type
    final screenSize = MediaQuery.of(context).size;
    final deviceType = topbar.getDeviceType(screenSize);

    // Set height dynamically based on device type
    double sliderHeight = 400; // Default for mobile
    if (deviceType == topbar.DeviceScreenType.desktop) {
      sliderHeight = 425;
    } else if (deviceType == topbar.DeviceScreenType.tablet) {
      sliderHeight = 300;
    } else if (deviceType == topbar.DeviceScreenType.mobile) {
      sliderHeight = 150;
    }


    
    double containerWidth = screenSize.width * 0.9;
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                print('Current Index: $_currentIndex');
              },
              child: CarouselSlider(
                items: imageLists
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        height: sliderHeight,
                        width: containerWidth,
                        fit: BoxFit.cover,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: sliderHeight,
                  scrollPhysics: const BouncingScrollPhysics(),
                  viewportFraction: 1.0,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            // Positioned Page Indicator at bottom center
            Positioned(
              bottom: 10, // Distance from the bottom
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  imageLists.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? const Color(0xffaa183d) // Active color
                          : Colors.white, // Inactive color
                      border: Border.all(color: black54),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
