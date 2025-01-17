import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Whychooseweb extends StatefulWidget {
  const Whychooseweb({super.key});

  @override
  State<Whychooseweb> createState() => _WhychoosewebState();
}

class _WhychoosewebState extends State<Whychooseweb> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Determine image height based on device type
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: AutoSizeText(
                "Why Choose Us",
                style: TextStyle(fontSize: 50, color: white), // Changed to white
              ),
            ),
          ),
          Container(
            height: 3, // Divider height
            width: 100, // Fixed width
            color: red, // Divider color
          ),
          SizedBox(
            height: 50,
          ),
          (isMobile || isTablet)
              ? SizedBox(
                  width: screenSize.width * .9,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      70, // Set a fixed width for the image or adjust as needed.
                                  child: Image.asset("assets/expert_team.png",
                                      fit: BoxFit.contain),
                                ),
                                SizedBox(
                                  height: 20, // Adjust spacing.
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      "Innovative Design Expertise",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text:
                                            "At Desire Div, we understand that your website is your online identity. Our team of creative ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors
                                              .black, // Adjust color as needed
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                "website designers and developers",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "  is passionate about crafting visually stunning, user-friendly websites that make a lasting impression. We keep up with the latest design trends to ensure your site is modern and engaging.",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      70, // Set a fixed width for the image or adjust as needed.
                                  child: Image.asset("assets/web-design.png",
                                      fit: BoxFit.contain),
                                ),
                                SizedBox(
                                  height: 20, // Adjust spacing.
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      "Customized Website Designing Solutions",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    AutoSizeText(
                                      "We believe that every business is unique, and your website should reflect that uniqueness. We take a tailored approach to design, ensuring your website aligns perfectly with your brand and goals. From personal portfolio to e-commerce sites, we have the expertise to deliver custom solutions.",
                                      style: TextStyle(),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        child: Card(
                          elevation: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      70, // Set a fixed width for the image or adjust as needed.
                                  child: Image.asset(
                                      "assets/customer-satisfaction.png",
                                      fit: BoxFit.contain),
                                ),
                                SizedBox(
                                  height: 20, // Adjust spacing.
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      "Proven track record and customer satisfaction",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    AutoSizeText(
                                      "Don't just take our word for it, our portfolio speaks for itself. Explore our past projects and see the quality of work we deliver. Make the smart choice for your website designing needs in Delhi NCR. Choose Desire Div for creativity, professionalism, and results that exceed your expectations.",
                                      style: TextStyle(),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : SizedBox(
                  width: screenSize.width * .9,
                  child: Row(
                    children: [
                      // Left Content Section
                      Expanded(
                        flex: 4, // Represents 40% of the total width.
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      70, // Set a fixed width for the image or adjust as needed.
                                  child: Image.asset("assets/expert_team.png",
                                      fit: BoxFit.contain),
                                ),
                                SizedBox(
                                  height: 20, // Adjust spacing.
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      "Innovative Design Expertise",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text:
                                            "At Desire Div, we understand that your website is your online identity. Our team of creative ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors
                                              .black, // Adjust color as needed
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                "website designers and developers",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "  is passionate about crafting visually stunning, user-friendly websites that make a lasting impression. We keep up with the latest design trends to ensure your site is modern and engaging.",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20, // Adjust the gap size as needed.
                      ),
                      Expanded(
                        flex: 4, // Represents 40% of the total width.
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      70, // Set a fixed width for the image or adjust as needed.
                                  child: Image.asset("assets/web-design.png",
                                      fit: BoxFit.contain),
                                ),
                                SizedBox(
                                  height: 20, // Adjust spacing.
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      "Customized Website Designing Solutions",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    AutoSizeText(
                                      "We believe that every business is unique, and your website should reflect that uniqueness. We take a tailored approach to design, ensuring your website aligns perfectly with your brand and goals. From personal portfolio to e-commerce sites, we have the expertise to deliver custom solutions.",
                                      style: TextStyle(),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20, // Adjust the gap size as needed.
                      ),
                      // Right Form Section
                      Expanded(
                        flex: 4, // Represents 40% of the total width.
                        child: Card(
                          elevation: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      70, // Set a fixed width for the image or adjust as needed.
                                  child: Image.asset(
                                      "assets/customer-satisfaction.png",
                                      fit: BoxFit.contain),
                                ),
                                SizedBox(
                                  height: 20, // Adjust spacing.
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      "Proven track record and customer satisfaction",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    AutoSizeText(
                                      "Don't just take our word for it, our portfolio speaks for itself. Explore our past projects and see the quality of work we deliver. Make the smart choice for your website designing needs in Delhi NCR. Choose Desire Div for creativity, professionalism, and results that exceed your expectations.",
                                      style: TextStyle(),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
