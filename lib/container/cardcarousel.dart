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
      'title': 'Sumit Sahoo',
      'subtitle': 'Trendy Nova',
      'description':
          "Digital Spark Team ke saath kaam karne ka experience bahut hi kamaal ka raha. Unhone mere Myntra account ko itni professionally handle kiya ki mere business ka graph hi change ho gaya. Pehle mujhe sirf 2 orders daily milte the, lekin unki expert strategies aur efforts ki wajah se ab mujhe rozana 30 orders milte hain. Unki team ka dedication aur work ethic impressive hai. Main unhe dil se recommend karta hoon un sabko jo apne online business ko grow karna chahte hain!",
      'image': 'assets/user1.jpg',
    },
    {
      'title': 'Shubhashish Thakur',
      'subtitle': 'Customer',
      'description':
          'My name is Subhashish Thakur, and I have been running my account on Amazon for some time. Earlier, I used to receive 1-2 orders daily. However, after the Digital Spark Team took over the management of my account, I have seen an extraordinary transformation \n In just three months, my daily order count has skyrocketed to 70-80 orders! Their expertise in account handling, optimization, and strategic planning has significantly boosted my sales. The results speak for themselves, and I am extremely satisfied with their services. \n I wholeheartedly recommend the Digital Spark Team to anyone looking to enhance their online business performance. They are true professionals and have exceeded my expectations.',
      'image': 'assets/user2.jpg',
    },
    {
      'title': 'Sanyog Sukla',
      'subtitle': 'Trend Spot',
      'description':
          'Digital Spark Team ke saath kaam karna meri business journey ka ek best decision tha. Unki online services ne mera business kaafi grow kar diya hai. Pehle mujhe daily sirf 10 orders milte the, lekin unke efforts aur strategies ki wajah se ab mujhe har din 40 orders milte hain. Unka professional approach aur dedication truly remarkable hai. Agar aap apne business ko next level par le jaana chahte hain, to Digital Spark Team se zarur connect karein!',
      'image': 'assets/user3.jpg',
    },
  ];

  // Custom method to build a card widget with fixed width and height
  Widget buildCard(Map<String, String> item) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    return SizedBox(
      width: deviceType == topbar.DeviceScreenType.desktop ||
              deviceType == topbar.DeviceScreenType.isWideColumnLayout
          ? 420
          : deviceType == topbar.DeviceScreenType.tablet
              ? 900
              : 350, // Fixed width
      child: SingleChildScrollView(
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
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30, // Fixed size for the avatar
                      backgroundImage: AssetImage(item['image']!),
                    ),
                    SizedBox(width: 15),
                    Column(
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
                  ],
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    return Center(
      child: CarouselSlider.builder(
        itemCount: items.length,
        options: CarouselOptions(
          height: deviceType == topbar.DeviceScreenType.tablet
              ? 250
              : 350, // Ensure enough space for the card and padding
          viewportFraction: deviceType == topbar.DeviceScreenType.desktop ||
                  deviceType == topbar.DeviceScreenType.hubmax ||
                  deviceType == topbar.DeviceScreenType.isWideColumnLayout
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
