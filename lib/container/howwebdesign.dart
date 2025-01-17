import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class Howwebdesign extends StatefulWidget {
  const Howwebdesign({super.key});

  @override
  State<Howwebdesign> createState() => _HowwebdesignState();
}

class _HowwebdesignState extends State<Howwebdesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    return Column(
      children: [
        Center(
          child: AutoSizeText(
            "How Website Designing Company in Delhi NCR Works?",
            style: TextStyle(
              fontSize: 40,
            ), // Changed to white
          ),
        ),
        Center(
          child: AutoSizeText(
            "We start by understanding your requirement and vision to Design a Website in Delhi that is tailored to your specific needs.",
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        (isMobile || isTablet)
            ? Column(
                children: [
                  _buildInfoCard(
                    context,
                    title: "Info Gathering",
                    description:
                        "Need detailed information on your business vision and goals",
                    number: "01",
                  ),
                  _buildInfoCard(
                    context,
                    title: "Planning",
                    description:
                        "We will help you to decide what technologies or languages should be implemented.",
                    number: "02",
                  ),
                  _buildInfoCard(
                    context,
                    title: "Design",
                    description:
                        "It's time to set the look and feel of your website.",
                    number: "03",
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfoCard(
                    context,
                    title: "Info Gathering",
                    description:
                        "Need detailed information on your business vision and goals",
                    number: "0 1",
                    width: 300,
                  ),
                  _buildInfoCard(
                    context,
                    title: "Planning",
                    description:
                        "We will help you to decide what technologies or languages should be implemented.",
                    number: "0 2",
                    width: 300,
                  ),
                  _buildInfoCard(
                    context,
                    title: "Design",
                    description:
                        "It's time to set the look and feel of your website.",
                    number: "0 3",
                    width: 300,
                  ),
                ],
              ),
        SizedBox(
          height: (isMobile || isTablet)?10:50,
        ),
        (isMobile || isTablet)
            ? Column(
                children: [
                  _buildInfoCard(
                    context,
                    title: "Development",
                    description:
                        "Writing a valid code that conforms to current web standards.",
                    number: "04",
                  ),
                  _buildInfoCard(
                    context,
                    title: "Testing And Launch",
                    description:
                        "Checking the complete functionality of Website etc.",
                    number: "05",
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 
                  _buildInfoCard(
                    context,
                    title: "Development",
                    description:
                        "Writing a valid code that conforms to current web standards.",
                    number: "0 4",
                    width: 300,
                  ),
                  _buildInfoCard(
                    context,
                    title: "Testing And Launch",
                    description:
                        "Checking the complete functionality of Website etc.",
                    number: "0 5",
                    width: 300,
                  ),
                ],
              ),
      ],
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required String description,
    required String number,
    double? width, // Optional width parameter
  }) {
    return Container(
      width: width ??
          double.infinity, // Use provided width or default to full width
      child: Stack(
        children: [
          // Number positioned at the end of the width
          Positioned(
            right: 0, // Align the number to the end of the card
            top: 0, // Adjust vertical alignment as needed
            child: Text(
              number,
              style: TextStyle(
                fontSize: 75, // Adjust size as needed
                fontWeight: FontWeight.bold,
                color: Colors.pink[50],
              ),
            ),
          ),
          // Title and description
          Positioned(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16), // Add some padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content vertically
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  SizedBox(
                    width: width,
                    child: AutoSizeText(
                      description,
                      style: TextStyle(
                        fontSize: 14, // Adjust size as needed
                        color: Colors.grey[800],
                      ),
                      maxLines: 3, // Limit lines for AutoSizeText
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
