import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Category",
                                  style: TextStyle(
                                    color: white,
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
                                SizedBox(
                                  width: isMobile
                                      ? 310
                                      : 600, // Fixed width for the TextField
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .white, // Set background color to white
                                      borderRadius: BorderRadius.circular(
                                          8), // Rounded corners
                                    ),
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        hintText:
                                            "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
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
                                        filled: true,
                                        fillColor: Colors
                                            .white, // Ensure the input area is also white
                                      ),
                                      items: [
                                        DropdownMenuItem(
                                          value:
                                              "Automative, Car & Accessories",
                                          child: Text(
                                            "Automative, Car & Accessories",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Baby Product, Toys & Educations",
                                          child: Text(
                                            "Baby Product, Toys & Educations",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Book, Movie, Music, Video Games, Entertainment",
                                          child: Text(
                                            "Book, Movie, Music, Video Games, Entertainment",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Industrial, Medical, Scientific Supplies & Office Product",
                                          child: Text(
                                            "Industrial, Medical, Scientific Supplies & Office Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Default",
                                          child: Text(
                                            "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                                          child: Text(
                                            "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Grocery, Food & Pet Supplies",
                                          child: Text(
                                            "Grocery, Food & Pet Supplies",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Health, Buety, Personal Care & Personal Care Appliances",
                                          child: Text(
                                            "Health, Buety, Personal Care & Personal Care Appliances",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                                          child: Text(
                                            "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Kitchen, Large & Small Appliances",
                                          child: Text(
                                            "Kitchen, Large & Small Appliances",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Sports Gym & Sporting Equipment",
                                          child: Text(
                                            "Sports Gym & Sporting Equipment",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Others",
                                          child: Text(
                                            "Others",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
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
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sub category",
                                  style: TextStyle(
                                    color: white,
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
                                SizedBox(
                                  width: isMobile
                                      ? 310
                                      : 600, // Fixed width for the TextField
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .white, // Set background color to white
                                      borderRadius: BorderRadius.circular(
                                          8), // Rounded corners
                                    ),
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        hintText: "Coin Collectibles",
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
                                        filled: true,
                                        fillColor: Colors
                                            .white, // Ensure the input area is also white
                                      ),
                                      items: [
                                        DropdownMenuItem(
                                          value: "Default",
                                          child: Text(
                                            "Coin Collectibles",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Silver Coins & Bars",
                                          child: Text(
                                            "Silver Coins & Bars",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Furniture - Other Products",
                                          child: Text(
                                            "Furniture - Other Products",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Toys - Other Products",
                                          child: Text(
                                            "Toys - Other Products",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Grocery - Other Products",
                                          child: Text(
                                            "Grocery - Other Products",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Office - Other Products",
                                          child: Text(
                                            "Office - Other Products",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Personal Care & Personal Care Appliances",
                                          child: Text(
                                            "Personal Care & Personal Care Appliances",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Health & Personal Care (HPC) - Other Sub Categories",
                                          child: Text(
                                            "Health, Buety, Personal Care & Personal Care Appliances",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Health, Personal Care - Other Household Supplies",
                                          child: Text(
                                            "Health, Personal Care - Other Household Supplies",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Business & Industrial Supplies - Other Product",
                                          child: Text(
                                            "Business & Industrial Supplies - Other Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Loan & Garden - Other Product",
                                          child: Text(
                                            "Loan & Garden - Other Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Luggage - Other Product",
                                          child: Text(
                                            "Luggage - Other Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Fine Art",
                                          child: Text(
                                            "Fine Art",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Baby Product - Other Product",
                                          child: Text(
                                            "Baby Product - Other Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Apparel - Other Product",
                                          child: Text(
                                            "Apparel - Other Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Indoor Lightings - Others",
                                          child: Text(
                                            "Indoor Lightings - Others",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Sports - Other Product",
                                          child: Text(
                                            "Sports - Other Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Automotive - Other Product",
                                          child: Text(
                                            "Automotive - Other Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              "Consumable Physical Gift Card",
                                          child: Text(
                                            "Consumable Physical Gift Card",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Warranty Services",
                                          child: Text(
                                            "Warranty Services",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Home - Other Product",
                                          child: Text(
                                            "Home - Other Product",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Home - Other Subcategories",
                                          child: Text(
                                            "Home - Other Subcategories",
                                            overflow: TextOverflow
                                                .ellipsis, // Add ellipsis for long text
                                            maxLines: 3, // Limit to one line
                                          ),
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
                                )
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
                                                  topbar.DeviceScreenType.mobile
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
                                                  topbar.DeviceScreenType.mobile
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
                                        child: DropdownButtonFormField<String>(
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
                                              child: Text("Account & Billing"),
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
                                                  topbar.DeviceScreenType.mobile
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
                                                  topbar.DeviceScreenType.mobile
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
                                        child: DropdownButtonFormField<String>(
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
                                              child: Text("Account & Billing"),
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
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
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
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                                  topbar.DeviceScreenType.mobile
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
                                            : 600, // Fixed width for the TextField
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .white, // Set background color to white
                                            borderRadius: BorderRadius.circular(
                                                8), // Rounded corners
                                          ),
                                          child:
                                              DropdownButtonFormField<String>(
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
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
                                              filled: true,
                                              fillColor: Colors
                                                  .white, // Ensure the input area is also white
                                            ),
                                            items: [
                                              DropdownMenuItem(
                                                value:
                                                    "Automative, Car & Accessories",
                                                child: Text(
                                                  "Automative, Car & Accessories",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Baby Product, Toys & Educations",
                                                child: Text(
                                                  "Baby Product, Toys & Educations",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Book, Movie, Music, Video Games, Entertainment",
                                                child: Text(
                                                  "Book, Movie, Music, Video Games, Entertainment",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Industrial, Medical, Scientific Supplies & Office Product",
                                                child: Text(
                                                  "Industrial, Medical, Scientific Supplies & Office Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
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
                                                value:
                                                    "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                                                child: Text(
                                                  "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Grocery, Food & Pet Supplies",
                                                child: Text(
                                                  "Grocery, Food & Pet Supplies",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Health, Buety, Personal Care & Personal Care Appliances",
                                                child: Text(
                                                  "Health, Buety, Personal Care & Personal Care Appliances",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                                                child: Text(
                                                  "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Kitchen, Large & Small Appliances",
                                                child: Text(
                                                  "Kitchen, Large & Small Appliances",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Sports Gym & Sporting Equipment",
                                                child: Text(
                                                  "Sports Gym & Sporting Equipment",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Others",
                                                child: Text(
                                                  "Others",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
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
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sub category",
                                        style: TextStyle(
                                          color: white,
                                          fontSize: deviceType ==
                                                  topbar.DeviceScreenType.mobile
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
                                            : 600, // Fixed width for the TextField
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .white, // Set background color to white
                                            borderRadius: BorderRadius.circular(
                                                8), // Rounded corners
                                          ),
                                          child:
                                              DropdownButtonFormField<String>(
                                            decoration: InputDecoration(
                                              hintText: "Coin Collectibles",
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
                                              filled: true,
                                              fillColor: Colors
                                                  .white, // Ensure the input area is also white
                                            ),
                                            items: [
                                              DropdownMenuItem(
                                                value: "Default",
                                                child: Text(
                                                  "Coin Collectibles",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Silver Coins & Bars",
                                                child: Text(
                                                  "Silver Coins & Bars",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Furniture - Other Products",
                                                child: Text(
                                                  "Furniture - Other Products",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Toys - Other Products",
                                                child: Text(
                                                  "Toys - Other Products",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Grocery - Other Products",
                                                child: Text(
                                                  "Grocery - Other Products",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Office - Other Products",
                                                child: Text(
                                                  "Office - Other Products",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Personal Care & Personal Care Appliances",
                                                child: Text(
                                                  "Personal Care & Personal Care Appliances",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Health & Personal Care (HPC) - Other Sub Categories",
                                                child: Text(
                                                  "Health, Buety, Personal Care & Personal Care Appliances",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Health, Personal Care - Other Household Supplies",
                                                child: Text(
                                                  "Health, Personal Care - Other Household Supplies",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Business & Industrial Supplies - Other Product",
                                                child: Text(
                                                  "Business & Industrial Supplies - Other Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Loan & Garden - Other Product",
                                                child: Text(
                                                  "Loan & Garden - Other Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Luggage - Other Product",
                                                child: Text(
                                                  "Luggage - Other Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Fine Art",
                                                child: Text(
                                                  "Fine Art",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Baby Product - Other Product",
                                                child: Text(
                                                  "Baby Product - Other Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Apparel - Other Product",
                                                child: Text(
                                                  "Apparel - Other Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Indoor Lightings - Others",
                                                child: Text(
                                                  "Indoor Lightings - Others",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Sports - Other Product",
                                                child: Text(
                                                  "Sports - Other Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Automotive - Other Product",
                                                child: Text(
                                                  "Automotive - Other Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Consumable Physical Gift Card",
                                                child: Text(
                                                  "Consumable Physical Gift Card",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Warranty Services",
                                                child: Text(
                                                  "Warranty Services",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value: "Home - Other Product",
                                                child: Text(
                                                  "Home - Other Product",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "Home - Other Subcategories",
                                                child: Text(
                                                  "Home - Other Subcategories",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
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
                                                  topbar.DeviceScreenType.mobile
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
                                                  topbar.DeviceScreenType.mobile
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
                                        "Price", // Label
                                        style: TextStyle(
                                          color: white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8),
                                      SizedBox(
                                        width:
                                            310, // Set a fixed width if needed
                                        child: SpinBox(
                                          min: 0,
                                          max: 1000000, // Set the numeric range
                                          value: 0, // Default starting value
                                          step: 1, // Increment step
                                          textStyle: TextStyle(fontSize: 14),
                                          incrementIcon: Icon(
                                              Icons.arrow_drop_up,
                                              size: 24,
                                              color: Colors
                                                  .blue), // Up arrow with color
                                          decrementIcon: Icon(
                                              Icons.arrow_drop_down,
                                              size: 24,
                                              color: Colors.blue),
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                          ),
                                          onChanged: (value) {
                                            print("Selected Price: $value");
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                    Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Tax",
                                        style: TextStyle(
                                          color: white,
                                          fontSize: deviceType ==
                                                  topbar.DeviceScreenType.mobile
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
                                        width: 310, // Fixed width for the TextField
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .white, // Set background color to white
                                            borderRadius: BorderRadius.circular(
                                                8), // Rounded corners
                                          ),
                                          child:
                                              DropdownButtonFormField<String>(
                                            decoration: InputDecoration(
                                              hintText:
                                                  "FREE GST",
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
                                              filled: true,
                                              fillColor: Colors
                                                  .white, // Ensure the input area is also white
                                            ),
                                            items: [
                                              DropdownMenuItem(
                                                value:
                                                    "Default",
                                                child: Text(
                                                  "FREE GST",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "5%",
                                                child: Text(
                                                  "5%",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "12%",
                                                child: Text(
                                                  "12%",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "18%",
                                                child: Text(
                                                  "18%",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                              DropdownMenuItem(
                                                value:
                                                    "28%",
                                                child: Text(
                                                  "28%",
                                                  overflow: TextOverflow
                                                      .ellipsis, // Add ellipsis for long text
                                                  maxLines:
                                                      3, // Limit to one line
                                                ),
                                              ),
                                            ],
                                            onChanged: (value) {
                                              // Handle the selected value
                                              print(
                                                  "Selected Tax: $value");
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
                                        "Your Phone Number",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: deviceType ==
                                                  topbar.DeviceScreenType.mobile
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
                                                  topbar.DeviceScreenType.mobile
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
                                        child: DropdownButtonFormField<String>(
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
                                              child: Text("Account & Billing"),
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
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                          ),
                        ),
                        SizedBox(height: 10),
                         SizedBox(height: 20),
                         ],
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
                                                      width: 2), // Blue border
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
                                            child:
                                                DropdownButtonFormField<String>(
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
                                            child:
                                                DropdownButtonFormField<String>(
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
                    )),
              ),
            ],
          );
  }
}
