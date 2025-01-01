import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class AmazonFeeCalc extends StatefulWidget {
  const AmazonFeeCalc({super.key});

  @override
  State<AmazonFeeCalc> createState() => AmazonFeeCalcState();
}

class AmazonFeeCalcState extends State<AmazonFeeCalc> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Determine image height based on device type
    // Decide whether to use Row or Column
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    bool ishub = deviceType == topbar.DeviceScreenType.hubmax;
    bool isDesktop = deviceType == topbar.DeviceScreenType.desktop;
    bool isWideColumnLayout =
        deviceType == topbar.DeviceScreenType.isWideColumnLayout;
    double containerWidth = deviceType == topbar.DeviceScreenType.desktop
        ? 600
        : deviceType == topbar.DeviceScreenType.tablet
            ? 400
            : 200;

    return (isMobile)
        ? Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 18
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 20
                                : 22),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Name",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: isMobile
                                  ? 310
                                  : ishub
                                      ? 200
                                      : 310, // Fixed width for the TextField
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Your Name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                    borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2), // Blue border
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your E-mail",
                              style: TextStyle(
                                color: black54,
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: isMobile
                                  ? 310
                                  : ishub
                                      ? 200
                                      : 310, // Fixed width for the TextField
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                    borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2), // Blue border
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Name",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: isMobile
                                  ? 310
                                  : 310, // Fixed width for the TextField
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Your Name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                    borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2), // Blue border
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Choose Concerned Department",
                              style: TextStyle(
                                color: black54,
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: isMobile
                                  ? 310
                                  : 310, // Fixed width for the TextField
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Select a Department",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                      width: 2, // Blue border
                                    ),
                                  ),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    value: "Defualt",
                                    child: Text(
                                      "Select a Department",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "Sales",
                                    child: Text("Sales"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Support",
                                    child: Text("Support"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Account & Billing",
                                    child: Text("Account & Billing"),
                                  ),
                                ],
                                onChanged: (value) {
                                  // Handle the selected value
                                  print("Selected Department: $value");
                                },
                                value:
                                    null, // Set the default value or selected value here
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Write your message",
                      style: TextStyle(
                        color: black54,
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 15
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 15
                                : 17),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: TextField(
                        maxLines: 5, // Number of lines for the textarea
                        decoration: InputDecoration(
                          labelText: "Write your Requirements.",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2, // Blue border
                            ),
                          ),
                          alignLabelWithHint:
                              true, // Aligns label with the top of the textarea
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Perform login action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2377af),
                        minimumSize: const Size(150, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: const Text(
                        "Send Message",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 18
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 20
                                : 22),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Name",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: isMobile
                                  ? 310
                                  : ishub
                                      ? 200
                                      : 310, // Fixed width for the TextField
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Your Name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                    borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2), // Blue border
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your E-mail",
                              style: TextStyle(
                                color: black54,
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: isMobile
                                  ? 310
                                  : ishub
                                      ? 200
                                      : 310, // Fixed width for the TextField
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                    borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2), // Blue border
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Name",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: isMobile
                                  ? 310
                                  : 310, // Fixed width for the TextField
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Your Name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                    borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2), // Blue border
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Choose Concerned Department",
                              style: TextStyle(
                                color: black54,
                                fontSize:
                                    deviceType == topbar.DeviceScreenType.mobile
                                        ? 15
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 15
                                            : 17),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              width: isMobile
                                  ? 310
                                  : 310, // Fixed width for the TextField
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Select a Department",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                      width: 2, // Blue border
                                    ),
                                  ),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    value: "Defualt",
                                    child: Text(
                                      "Select a Department",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "Sales",
                                    child: Text("Sales"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Support",
                                    child: Text("Support"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Account & Billing",
                                    child: Text("Account & Billing"),
                                  ),
                                ],
                                onChanged: (value) {
                                  // Handle the selected value
                                  print("Selected Department: $value");
                                },
                                value:
                                    null, // Set the default value or selected value here
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Write your message",
                      style: TextStyle(
                        color: black54,
                        fontSize: deviceType == topbar.DeviceScreenType.mobile
                            ? 15
                            : (deviceType == topbar.DeviceScreenType.tablet
                                ? 15
                                : 17),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: TextField(
                        maxLines: 5, // Number of lines for the textarea
                        decoration: InputDecoration(
                          labelText: "Write your Requirements.",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2, // Blue border
                            ),
                          ),
                          alignLabelWithHint:
                              true, // Aligns label with the top of the textarea
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Perform login action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2377af),
                        minimumSize: const Size(150, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: const Text(
                        "Send Message",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        : Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left Image Section
              Flexible(
                flex: 50,
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey.shade400,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: Image.asset(
                            "assets/amz.jpeg",
                            height: 80,
                          )),
                          isDesktop
                              ? Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Category",
                                          style: TextStyle(
                                            color: white,
                                            fontSize: deviceType ==
                                                    topbar
                                                        .DeviceScreenType.mobile
                                                ? 15
                                                : (deviceType ==
                                                        topbar.DeviceScreenType
                                                            .tablet
                                                    ? 15
                                                    : 17),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: isMobile
                                              ? 310
                                              : 550, // Fixed width for the TextField
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors
                                                  .white, // Set background color to white
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      8), // Rounded corners
                                            ),
                                            child:
                                                DropdownButtonFormField<String>(
                                              decoration: InputDecoration(
                                                labelText: "Select a Category",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8), // Rounded corners
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8), // Rounded corners
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2, // Blue border
                                                  ),
                                                ),
                                                filled: true,
                                                fillColor: Colors
                                                    .white, // Ensure the input area is also white
                                              ),
                                              items: [
                                                DropdownMenuItem(
                                                  value: "Default",
                                                  child: Text(
                                                    "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                                                    overflow: TextOverflow
                                                        .ellipsis, // Add ellipsis for long text
                                                    maxLines:
                                                        3, // Limit to one line
                                                  ),
                                                ),
                                                DropdownMenuItem(
                                                  value: "Sales",
                                                  child: Text("Sales"),
                                                ),
                                                DropdownMenuItem(
                                                  value: "Support",
                                                  child: Text("Support"),
                                                ),
                                                DropdownMenuItem(
                                                  value: "Account & Billing",
                                                  child:
                                                      Text("Account & Billing"),
                                                ),
                                              ],
                                              onChanged: (value) {
                                                // Handle the selected value
                                                print(
                                                    "Selected Department: $value");
                                              },
                                              value:
                                                  null, // Set the default value or selected value here
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Category",
                                          style: TextStyle(
                                            color: white,
                                            fontSize: deviceType ==
                                                    topbar
                                                        .DeviceScreenType.mobile
                                                ? 15
                                                : (deviceType ==
                                                        topbar.DeviceScreenType
                                                            .tablet
                                                    ? 15
                                                    : 17),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: isMobile
                                              ? 310
                                              : 550, // Fixed width for the TextField
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors
                                                  .white, // Set background color to white
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      8), // Rounded corners
                                            ),
                                            child:
                                                DropdownButtonFormField<String>(
                                              decoration: InputDecoration(
                                                labelText: "Select a Category",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8), // Rounded corners
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8), // Rounded corners
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2, // Blue border
                                                  ),
                                                ),
                                                filled: true,
                                                fillColor: Colors
                                                    .white, // Ensure the input area is also white
                                              ),
                                              items: [
                                                DropdownMenuItem(
                                                  value: "Default",
                                                  child: Text(
                                                    "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                                                    overflow: TextOverflow
                                                        .ellipsis, // Add ellipsis for long text
                                                    maxLines:
                                                        3, // Limit to one line
                                                  ),
                                                ),
                                                DropdownMenuItem(
                                                  value: "Sales",
                                                  child: Text("Sales"),
                                                ),
                                                DropdownMenuItem(
                                                  value: "Support",
                                                  child: Text("Support"),
                                                ),
                                                DropdownMenuItem(
                                                  value: "Account & Billing",
                                                  child:
                                                      Text("Account & Billing"),
                                                ),
                                              ],
                                              onChanged: (value) {
                                                // Handle the selected value
                                                print(
                                                    "Selected Department: $value");
                                              },
                                              value:
                                                  null, // Set the default value or selected value here
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Your Name",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: deviceType ==
                                                    topbar
                                                        .DeviceScreenType.mobile
                                                ? 15
                                                : (deviceType ==
                                                        topbar.DeviceScreenType
                                                            .tablet
                                                    ? 15
                                                    : 17),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: isMobile
                                              ? 310
                                              : 310, // Fixed width for the TextField
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "Your Name",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2), // Blue border
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Your E-mail",
                                          style: TextStyle(
                                            color: black54,
                                            fontSize: deviceType ==
                                                    topbar
                                                        .DeviceScreenType.mobile
                                                ? 15
                                                : (deviceType ==
                                                        topbar.DeviceScreenType
                                                            .tablet
                                                    ? 15
                                                    : 17),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: isMobile
                                              ? 310
                                              : 310, // Fixed width for the TextField
                                          child: TextField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              labelText: "Email",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2), // Blue border
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                          SizedBox(height: 20),
                          isDesktop
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Your Phone Number",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: deviceType ==
                                                    topbar
                                                        .DeviceScreenType.mobile
                                                ? 15
                                                : (deviceType ==
                                                        topbar.DeviceScreenType
                                                            .tablet
                                                    ? 15
                                                    : 17),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: isMobile
                                              ? 310
                                              : 310, // Fixed width for the TextField
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "Your phone",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2), // Blue border
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Choose Concerned Department",
                                          style: TextStyle(
                                            color: black54,
                                            fontSize: deviceType ==
                                                    topbar
                                                        .DeviceScreenType.mobile
                                                ? 15
                                                : (deviceType ==
                                                        topbar.DeviceScreenType
                                                            .tablet
                                                    ? 15
                                                    : 17),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: isMobile
                                              ? 310
                                              : 310, // Fixed width for the TextField
                                          child:
                                              DropdownButtonFormField<String>(
                                            decoration: InputDecoration(
                                              labelText: "Select a Department",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                                borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 2, // Blue border
                                                ),
                                              ),
                                            ),
                                            items: [
                                              DropdownMenuItem(
                                                value: "Defualt",
                                                child: Text(
                                                  "Select a Department",
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Sales",
                                                child: Text("Sales"),
                                              ),
                                              DropdownMenuItem(
                                                value: "Support",
                                                child: Text("Support"),
                                              ),
                                              DropdownMenuItem(
                                                value: "Account & Billing",
                                                child:
                                                    Text("Account & Billing"),
                                              ),
                                            ],
                                            onChanged: (value) {
                                              // Handle the selected value
                                              print(
                                                  "Selected Department: $value");
                                            },
                                            value:
                                                null, // Set the default value or selected value here
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Your Phone Number",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: deviceType ==
                                                    topbar
                                                        .DeviceScreenType.mobile
                                                ? 15
                                                : (deviceType ==
                                                        topbar.DeviceScreenType
                                                            .tablet
                                                    ? 15
                                                    : 17),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: isMobile
                                              ? 310
                                              : 310, // Fixed width for the TextField
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "Your Phone",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2), // Blue border
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Choose Concerned Department",
                                          style: TextStyle(
                                            color: black54,
                                            fontSize: deviceType ==
                                                    topbar
                                                        .DeviceScreenType.mobile
                                                ? 15
                                                : (deviceType ==
                                                        topbar.DeviceScreenType
                                                            .tablet
                                                    ? 15
                                                    : 17),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: isMobile
                                              ? 310
                                              : 310, // Fixed width for the TextField
                                          child:
                                              DropdownButtonFormField<String>(
                                            decoration: InputDecoration(
                                              labelText: "Select a Department",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Rounded corners
                                                borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 2, // Blue border
                                                ),
                                              ),
                                            ),
                                            items: [
                                              DropdownMenuItem(
                                                value: "Defualt",
                                                child: Text(
                                                  "Select a Department",
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Sales",
                                                child: Text("Sales"),
                                              ),
                                              DropdownMenuItem(
                                                value: "Support",
                                                child: Text("Support"),
                                              ),
                                              DropdownMenuItem(
                                                value: "Account & Billing",
                                                child:
                                                    Text("Account & Billing"),
                                              ),
                                            ],
                                            onChanged: (value) {
                                              // Handle the selected value
                                              print(
                                                  "Selected Department: $value");
                                            },
                                            value:
                                                null, // Set the default value or selected value here
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                          SizedBox(height: 20),
                          Text(
                            "Write your message",
                            style: TextStyle(
                              color: black54,
                              fontSize:
                                  deviceType == topbar.DeviceScreenType.mobile
                                      ? 15
                                      : (deviceType ==
                                              topbar.DeviceScreenType.tablet
                                          ? 15
                                          : 17),
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: TextField(
                              maxLines: 5, // Number of lines for the textarea
                              decoration: InputDecoration(
                                labelText: "Write your Requirements.",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      8), // Rounded corners
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      8), // Rounded corners
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2, // Blue border
                                  ),
                                ),
                                alignLabelWithHint:
                                    true, // Aligns label with the top of the textarea
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Perform login action
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff2377af),
                              minimumSize: const Size(150, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: const Text(
                              "Send Message",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Right Content Section
              Flexible(
                flex: 50,
                child: Padding(
                    padding: EdgeInsets.only(
                      // Adjust dynamically
                      left: MediaQuery.of(context).size.height *
                          0.03, // Adjust dynamically
                    ),
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 2,
                              color: Colors.grey.shade400,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: AutoSizeText(
                                  "Contact Us",
                                  style: TextStyle(
                                    fontSize: deviceType ==
                                            topbar.DeviceScreenType.mobile
                                        ? 18
                                        : (deviceType ==
                                                topbar.DeviceScreenType.tablet
                                            ? 20
                                            : 22),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              isDesktop
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Your Name",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: deviceType ==
                                                        topbar.DeviceScreenType
                                                            .mobile
                                                    ? 15
                                                    : (deviceType ==
                                                            topbar
                                                                .DeviceScreenType
                                                                .tablet
                                                        ? 15
                                                        : 17),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: isMobile
                                                  ? 310
                                                  : 310, // Fixed width for the TextField
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  labelText: "Your Name",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width:
                                                            2), // Blue border
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 10),
                                            Text(
                                              "Your E-mail",
                                              style: TextStyle(
                                                color: black54,
                                                fontSize: deviceType ==
                                                        topbar.DeviceScreenType
                                                            .mobile
                                                    ? 15
                                                    : (deviceType ==
                                                            topbar
                                                                .DeviceScreenType
                                                                .tablet
                                                        ? 15
                                                        : 17),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: isMobile
                                                  ? 310
                                                  : 310, // Fixed width for the TextField
                                              child: TextField(
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                  labelText: "Email",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width:
                                                            2), // Blue border
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Your Name",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: deviceType ==
                                                        topbar.DeviceScreenType
                                                            .mobile
                                                    ? 15
                                                    : (deviceType ==
                                                            topbar
                                                                .DeviceScreenType
                                                                .tablet
                                                        ? 15
                                                        : 17),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: isMobile
                                                  ? 310
                                                  : 310, // Fixed width for the TextField
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  labelText: "Your Name",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width:
                                                            2), // Blue border
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Your E-mail",
                                              style: TextStyle(
                                                color: black54,
                                                fontSize: deviceType ==
                                                        topbar.DeviceScreenType
                                                            .mobile
                                                    ? 15
                                                    : (deviceType ==
                                                            topbar
                                                                .DeviceScreenType
                                                                .tablet
                                                        ? 15
                                                        : 17),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: isMobile
                                                  ? 310
                                                  : 310, // Fixed width for the TextField
                                              child: TextField(
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                  labelText: "Email",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width:
                                                            2), // Blue border
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                              SizedBox(height: 20),
                              isDesktop
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Your Phone Number",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: deviceType ==
                                                        topbar.DeviceScreenType
                                                            .mobile
                                                    ? 15
                                                    : (deviceType ==
                                                            topbar
                                                                .DeviceScreenType
                                                                .tablet
                                                        ? 15
                                                        : 17),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: isMobile
                                                  ? 310
                                                  : 310, // Fixed width for the TextField
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  labelText: "Your phone",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width:
                                                            2), // Blue border
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Choose Concerned Department",
                                              style: TextStyle(
                                                color: black54,
                                                fontSize: deviceType ==
                                                        topbar.DeviceScreenType
                                                            .mobile
                                                    ? 15
                                                    : (deviceType ==
                                                            topbar
                                                                .DeviceScreenType
                                                                .tablet
                                                        ? 15
                                                        : 17),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: isMobile
                                                  ? 310
                                                  : 310, // Fixed width for the TextField
                                              child: DropdownButtonFormField<
                                                  String>(
                                                decoration: InputDecoration(
                                                  labelText:
                                                      "Select a Department",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                    borderSide: BorderSide(
                                                      color: Colors.blue,
                                                      width: 2, // Blue border
                                                    ),
                                                  ),
                                                ),
                                                items: [
                                                  DropdownMenuItem(
                                                    value: "Defualt",
                                                    child: Text(
                                                      "Select a Department",
                                                    ),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "Sales",
                                                    child: Text("Sales"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "Support",
                                                    child: Text("Support"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "Account & Billing",
                                                    child: Text(
                                                        "Account & Billing"),
                                                  ),
                                                ],
                                                onChanged: (value) {
                                                  // Handle the selected value
                                                  print(
                                                      "Selected Department: $value");
                                                },
                                                value:
                                                    null, // Set the default value or selected value here
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Your Phone Number",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: deviceType ==
                                                        topbar.DeviceScreenType
                                                            .mobile
                                                    ? 15
                                                    : (deviceType ==
                                                            topbar
                                                                .DeviceScreenType
                                                                .tablet
                                                        ? 15
                                                        : 17),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: isMobile
                                                  ? 310
                                                  : 310, // Fixed width for the TextField
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  labelText: "Your Phone",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width:
                                                            2), // Blue border
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Choose Concerned Department",
                                              style: TextStyle(
                                                color: black54,
                                                fontSize: deviceType ==
                                                        topbar.DeviceScreenType
                                                            .mobile
                                                    ? 15
                                                    : (deviceType ==
                                                            topbar
                                                                .DeviceScreenType
                                                                .tablet
                                                        ? 15
                                                        : 17),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: isMobile
                                                  ? 310
                                                  : 310, // Fixed width for the TextField
                                              child: DropdownButtonFormField<
                                                  String>(
                                                decoration: InputDecoration(
                                                  labelText:
                                                      "Select a Department",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8), // Rounded corners
                                                    borderSide: BorderSide(
                                                      color: Colors.blue,
                                                      width: 2, // Blue border
                                                    ),
                                                  ),
                                                ),
                                                items: [
                                                  DropdownMenuItem(
                                                    value: "Defualt",
                                                    child: Text(
                                                      "Select a Department",
                                                    ),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "Sales",
                                                    child: Text("Sales"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "Support",
                                                    child: Text("Support"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "Account & Billing",
                                                    child: Text(
                                                        "Account & Billing"),
                                                  ),
                                                ],
                                                onChanged: (value) {
                                                  // Handle the selected value
                                                  print(
                                                      "Selected Department: $value");
                                                },
                                                value:
                                                    null, // Set the default value or selected value here
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                              SizedBox(height: 20),
                              Text(
                                "Write your message",
                                style: TextStyle(
                                  color: black54,
                                  fontSize: deviceType ==
                                          topbar.DeviceScreenType.mobile
                                      ? 15
                                      : (deviceType ==
                                              topbar.DeviceScreenType.tablet
                                          ? 15
                                          : 17),
                                ),
                              ),
                              SizedBox(height: 10),
                              Expanded(
                                child: TextField(
                                  maxLines:
                                      5, // Number of lines for the textarea
                                  decoration: InputDecoration(
                                    labelText: "Write your Requirements.",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rounded corners
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rounded corners
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2, // Blue border
                                      ),
                                    ),
                                    alignLabelWithHint:
                                        true, // Aligns label with the top of the textarea
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  // Perform login action
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff2377af),
                                  minimumSize: const Size(150, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                ),
                                child: const Text(
                                  "Send Message",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          );
  }
}
