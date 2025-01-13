import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/responsive.dart' as res;

class Detailwebdesigning extends StatefulWidget {
  const Detailwebdesigning({super.key});

  @override
  State<Detailwebdesigning> createState() => _DetailwebdesigningState();
}

class _DetailwebdesigningState extends State<Detailwebdesigning> {
  @override
  Widget build(BuildContext context) {
    Widget mobileView = Column(
      children: [
        _buildContentSection(context, isMobile: true),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: SizedBox(
            child: Stack(
              alignment:
                  Alignment.center, // Ensures the CircleAvatar is centered
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                    child: Image.asset(
                      "assets/video.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // CircleAvatar with the play icon
                SizedBox(
                  height: 70,
                  child: CircleAvatar(
                    radius: 45, // Adjust radius to match icon size
                    backgroundColor: Colors.red, // Circle background color
                    child: Icon(
                      Icons.play_arrow,
                      size: 45, // Size of the Icon
                      color: Colors.white, // Icon color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    Widget tabletView = Column(
      children: [
        _buildContentSection(context, isTablet: true),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: SizedBox(
            // height: 300, // Specify an appropriate height if needed
            child: Stack(
              alignment:
                  Alignment.center, // Ensures the CircleAvatar is centered
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                    child: Image.asset(
                      "assets/video.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // CircleAvatar with the play icon
                SizedBox(
                  height: 100,
                  child: CircleAvatar(
                    radius: 45, // Adjust radius to match icon size
                    backgroundColor: Colors.red, // Circle background color
                    child: Icon(
                      Icons.play_arrow,
                      size: 60, // Size of the Icon
                      color: Colors.white, // Icon color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    Widget desktopView = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Left Image Section
        Flexible(
          flex: 30,
          child: _buildContentSection(context),
        ),
        // Right Content Section
        Flexible(
          flex: 30,
          child: Stack(
            alignment: Alignment.center, // Ensures the CircleAvatar is centered
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Center(
                  child: Image.asset(
                    "assets/video.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // CircleAvatar with the play icon
              CircleAvatar(
                radius: 45, // Adjust radius to match icon size
                backgroundColor: Colors.red, // Circle background color
                child: Icon(
                  Icons.play_arrow,
                  size: 60, // Size of the Icon
                  color: Colors.white, // Icon color
                ),
              ),
            ],
          ),
        ),
      ],
    );

    return res.Responsive(
      mobile: mobileView,
      tablet: tabletView,
      desktop: desktopView,
    );
  }

  Widget _buildContentSection(BuildContext context,
      {bool isMobile = false, bool isTablet = false}) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            "Welcome to Desire Div",
            style: TextStyle(
              color: red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          AutoSizeText(
            "Best Website Designing Company in Gurgaon",
            style: TextStyle(
              fontSize: 40,
            ), // Changed to white
          ),
          const SizedBox(height: 30),
          RichText(
            text: TextSpan(
              text: "Discover the power of Desire Div ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Adjust color as needed
              ),
              children: [
               
                TextSpan(
                  text:
                      ", an expert website design company in Gurgaon. With a commitment to transform old websites from the 90s into modern websites. Our team of talented ",
                ),
                TextSpan(
                  text: "website designers and developers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      " have a deep understanding of the latest languages and technologies, ensuring that every website we create is not only visually appealing but also highly functional. Our portfolio includes a diverse range of projects, from elegant and modern corporate websites to vibrant and user-friendly e-commerce platforms.",
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          (isMobile || isTablet)
              ? Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width:
                                  50, // Set a fixed width for the image or adjust as needed.
                              child: Image.asset(
                                  "assets/unlocking-the-power.png",
                                  fit: BoxFit.contain),
                            ),
                            SizedBox(
                              width: 20, // Adjust spacing.
                            ),
                            Expanded(
                              // Ensures the Column fits within the available space.
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    "Unlocking the Potential of Web Design",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText(
                                    "Desire Div's expertise in website designing in Gurgaon can help you create a compelling website that attracts your audience and drives success.",
                                    style: TextStyle(),
                                    maxLines: 10,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width:
                                  50, // Set a fixed width for the image or adjust as needed.
                              child: Image.asset("assets/expert_team.png",
                                  fit: BoxFit.contain),
                            ),
                            SizedBox(
                              width: 20, // Adjust spacing.
                            ),
                            Expanded(
                              // Ensures the Column fits within the available space.
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    "Power Up Your online presence",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText(
                                    "Desire div can power up your website online presence whether you're a small startup or a well-established business",
                                    style: TextStyle(),
                                    maxLines: 10,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Content Section
                    Expanded(
                      flex: 50, // Represents 40% of the total width.
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width:
                                  50, // Set a fixed width for the image or adjust as needed.
                              child: Image.asset(
                                  "assets/unlocking-the-power.png",
                                  fit: BoxFit.contain),
                            ),
                            SizedBox(
                              width: 20, // Adjust spacing.
                            ),
                            Expanded(
                              // Ensures the Column fits within the available space.
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    "Unlocking the Potential of Web Design",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText(
                                    "Desire Div's expertise in website designing in Gurgaon can help you create a compelling website that attracts your audience and drives success.",
                                    style: TextStyle(),
                                    maxLines: 10,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20, // Adjust the gap size as needed.
                    ),
                    // Right Form Section
                    Expanded(
                      flex: 50, // Represents 40% of the total width.
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width:
                                  50, // Set a fixed width for the image or adjust as needed.
                              child: Image.asset(
                                  "assets/power-up-marketing.png",
                                  fit: BoxFit.contain),
                            ),
                            SizedBox(
                              width: 20, // Adjust spacing.
                            ),
                            Expanded(
                              // Ensures the Column fits within the available space.
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    "Power Up Your online presence",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AutoSizeText(
                                    "Desire div can power up your website online presence whether you're a small startup or a well-established business.",
                                    style: TextStyle(),
                                    maxLines: 10,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
