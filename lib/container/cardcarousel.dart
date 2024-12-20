import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:carousel_slider/carousel_slider.dart';

class Cardcarousel extends StatefulWidget {
  const Cardcarousel({super.key});

  @override
  State<Cardcarousel> createState() => _CardcarouselState();
}

class _CardcarouselState extends State<Cardcarousel> {
  final List<Map<String, String>> items = [
    {
      'title': 'Sanjay Patel',
      'subtitle': 'Mountain Breeze',
      'description':
         'Oasis garments is will known in offline markets and from last 4-5 years we are getting almost 50 thousand orders monthly. We are satisfied by DigitalSpark team. ' 
    },
    {
      'title': 'Raj Sharma',
      'subtitle': 'ADI Shoes',
      'description':
         'We are well known brand in offline markets and all super markets chains. We are present in all emarketplaces now from 4 years and getting good visibility on all e-market places. '
    },
    {
      'title': 'Nirmal Chuahan',
      'subtitle': 'Garments',
      'description':
          
          'The DigitalSpark  Performance is unremarkable and they have shown a good growth in last 2 years. Our brand Mountain Breeze has shown growth unexpected.'
    },
    {
      'title': 'Jaydeep Dave',
      'subtitle': 'Food Products',
      'description':
       'We are selling on emarketplaces from last 5 years and we have seen good growth in last some years.'
          
    },
  ];

  // Custom method to build a card widget with fixed width and height
  Widget buildCard(Map<String, String> item) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    return SizedBox(
      width: deviceType == topbar.DeviceScreenType.desktop
          ? 420
          : deviceType == topbar.DeviceScreenType.tablet
              ? 900
              : 350, // Fixed width
      height: 200, // Fixed height
      child: Card(
        color: grey250,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      item['subtitle']!,
                      style: TextStyle(
                        fontSize: 16,
                        color: black54,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              AutoSizeText(
                item['description']!,
                style: TextStyle(
                  fontSize: 16,
                  color: black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    return Center(
      child: CarouselSlider.builder(
        itemCount: items.length,
        options: CarouselOptions(
          height: deviceType == topbar.DeviceScreenType.desktop
              ? 220
              : 250, // Ensure enough space for the card and padding
          viewportFraction: deviceType == topbar.DeviceScreenType.desktop
              ? 0.335555
              : 1, // Adjust to control how much of the next card is visible
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 500),
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (context, index, realIndex) {
          return buildCard(items[index]); // Use the custom card method
        },
      ),
    );
  }
}
