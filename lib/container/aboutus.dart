import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet= deviceType == topbar.DeviceScreenType.tablet;
    double containerWidth = deviceType == topbar.DeviceScreenType.desktop
        ? 600
        : deviceType == topbar.DeviceScreenType.tablet
            ? 400
            : 200;

    return (isMobile || isTablet)
        ? Column(
            children: [
              SizedBox(
                child:  Padding(
                padding:
                    const EdgeInsets.only(right: 40.0, top: 40, bottom: 40),
                child: Stack(
                  clipBehavior: Clip.none, // Allow elements to overflow
                  children: [
                    // Outer blue border
                    Positioned(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue, // Blue border color
                            width: 4, // Border thickness
                          ),
                          borderRadius:
                              BorderRadius.circular(12), // Rounded corners
                        ),
                      ),
                    ),
                    // Main image overlay
                    Positioned.fill(
                      top: 40, // Adjust the vertical overlay offset
                      left: 40, // Adjust the horizontal overlay offset
                      right: -40, // Extend right for the overlay effect
                      bottom: -40, // Extend bottom for the overlay effect
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                        child: Image.asset(
                          "assets/about.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                          
              ),
              SizedBox(height: 30,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "ABOUT US",
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
                              height: 3, // Divider height
                              width: 40, // Fixed width
                              color: blue, // Divider color
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 1.5, // Divider height
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
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "#1 Digital and Ecommerce Solutions With ",
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.tablet
                                      ? 30
                                      : 40,
                              fontWeight: FontWeight.bold,
                              color: black, // Use default text color
                            ),
                          ),
                          TextSpan(
                            text: "10 Years ",
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.tablet
                                      ? 30
                                      : 40,
                              fontWeight: FontWeight.bold,
                              color: orange, // Highlighted text
                            ),
                          ),
                          TextSpan(
                            text: "Of Experience",
                            style: TextStyle(
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.tablet
                                      ? 30
                                      : 40,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 15,
                    ),
                    AutoSizeText(
                      "At Digibells, we're a team of digital and ecommerce experts with over 10 years of experience helping businesses succeed online. We understand the importance of having a strong digital presence, especially in today's ever-evolving digital landscape.",
                      style: TextStyle(
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 15
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 15
                                : 17),
                        color: black54,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AutoSizeText(
                      "We offer a wide range of digital and ecommerce solutions to help businesses of all sizes grow and succeed online. Our services include website design and development, search engine optimization (SEO), pay-per-click (PPC) advertising, social media marketing, email marketing, ecommerce website development, and more.",
                      style: TextStyle(
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 15
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 15
                                : 17),
                        color: black54,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AutoSizeText(
                      "With over a decade of experience in the industry, we've worked with businesses across a variety of industries and niches. We take a personalized approach to every project, working closely with our clients to understand their unique needs and goals. We're dedicated to delivering high-quality solutions that drive results and help our clients succeed online.",
                      style: TextStyle(
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 15
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 15
                                : 17),
                        color: black54,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AutoSizeText(
                      "Different Products Categories need to be marketed differently with different strategies and in Digibells we understand this easily as we have core experience of ecommerce market places. No promotion or advertisement is free on these platforms so even doing experiments yourself may result in you losing your hard-earned money without generating adequate sales.",
                      style: TextStyle(
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 15
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 15
                                : 17),
                        color: black54,
                      ),
                    ),
                    const SizedBox(height: 24),
                    // CEO Section
                    Row(
                      children: [
                        // Profile Picture Placeholder
                        CircleAvatar(
                          radius: 24, // Circular profile image
                          backgroundImage: AssetImage(
                              "assets/team-1.jpg"), // Replace with CEO image
                        ),
                        SizedBox(width: 20), // Spacing between image and text
                                  
                        // Name and Designation
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AP Singh",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "CEO",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Your action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: blue, // Button background color
                        minimumSize:
                            const Size(180, 60), // Width: 150, Height: 50
                      ),
                      child: const Text(
                        "Read more",
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 14, // Font size for text
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            children: [
              // Left Image Section
              Flexible(
                flex: 50,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, top: 40, bottom: 40),
                  child: Stack(
                    clipBehavior: Clip.none, // Allow elements to overflow
                    children: [
                      // Outer blue border
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue, // Blue border color
                              width: 4, // Border thickness
                            ),
                            borderRadius:
                                BorderRadius.circular(12), // Rounded corners
                          ),
                        ),
                      ),
                      // Main image overlay
                      Positioned(
                        top: 40, // Adjust the vertical overlay offset
                        left: 40, // Adjust the horizontal overlay offset
                        right: -40, // Extend right for the overlay effect
                        bottom: -40, // Extend bottom for the overlay effect
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                          child: Image.asset(
                            "assets/about.jpg",
                            fit: BoxFit.cover, // Maintain aspect ratio
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Right Content Section
              Flexible(
                flex: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 40),
                  child: SizedBox(
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "ABOUT US",
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
                                  height: 3, // Divider height
                                  width: 40, // Fixed width
                                  color: blue, // Divider color
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1.5, // Divider height
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
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "#1 Digital and Ecommerce Solutions With ",
                                style: TextStyle(
                                  fontSize:
                                      deviceType == topbar.DeviceScreenType.tablet
                                          ? 30
                                          : 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Use default text color
                                ),
                              ),
                              TextSpan(
                                text: "10 Years ",
                                style: TextStyle(
                                  fontSize:
                                      deviceType == topbar.DeviceScreenType.tablet
                                          ? 30
                                          : 40,
                                  fontWeight: FontWeight.bold,
                                  color: orange, // Highlighted text
                                ),
                              ),
                              TextSpan(
                                text: "Of Experience",
                                style: TextStyle(
                                  fontSize:
                                      deviceType == topbar.DeviceScreenType.tablet
                                          ? 30
                                          : 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 15,
                        ),
                        AutoSizeText(
                          "At Digibells, we're a team of digital and ecommerce experts with over 10 years of experience helping businesses succeed online. We understand the importance of having a strong digital presence, especially in today's ever-evolving digital landscape.",
                          style: TextStyle(
                            fontSize: deviceType == topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                            color: black54,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AutoSizeText(
                          "We offer a wide range of digital and ecommerce solutions to help businesses of all sizes grow and succeed online. Our services include website design and development, search engine optimization (SEO), pay-per-click (PPC) advertising, social media marketing, email marketing, ecommerce website development, and more.",
                          style: TextStyle(
                            fontSize: deviceType == topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                            color: black54,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AutoSizeText(
                          "With over a decade of experience in the industry, we've worked with businesses across a variety of industries and niches. We take a personalized approach to every project, working closely with our clients to understand their unique needs and goals. We're dedicated to delivering high-quality solutions that drive results and help our clients succeed online.",
                          style: TextStyle(
                            fontSize: deviceType == topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                            color: black54,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AutoSizeText(
                          "Different Products Categories need to be marketed differently with different strategies and in Digibells we understand this easily as we have core experience of ecommerce market places. No promotion or advertisement is free on these platforms so even doing experiments yourself may result in you losing your hard-earned money without generating adequate sales.",
                          style: TextStyle(
                            fontSize: deviceType == topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                            color: black54,
                          ),
                        ),
                        const SizedBox(height: 24),
                        // CEO Section
                        Row(
                          children: [
                            // Profile Picture Placeholder
                            CircleAvatar(
                              radius: 24, // Circular profile image
                              backgroundImage: AssetImage(
                                  "assets/team-1.jpg"), // Replace with CEO image
                            ),
                            SizedBox(width: 20), // Spacing between image and text
                    
                            // Name and Designation
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "AP Singh",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "CEO",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            // Your action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blue, // Button background color
                            minimumSize:
                                const Size(180, 60), // Width: 150, Height: 50
                          ),
                          child: const Text(
                            "Read more",
                            style: TextStyle(
                              color: Colors.white, // Text color
                              fontSize: 14, // Font size for text
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
