import 'package:flutter/material.dart';
import 'package:digibells/container/customdropdown.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';

class AmazonFeeCalc extends StatefulWidget {
  const AmazonFeeCalc({super.key});

  @override
  State<AmazonFeeCalc> createState() => AmazonFeeCalcState();
}

class AmazonFeeCalcState extends State<AmazonFeeCalc> {
  // Create separate GlobalKeys for each form
  final _firstFormKey = GlobalKey<FormState>();
  final _secondFormKey = GlobalKey<FormState>();

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();

  String? _selectedDepartment;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;

    return (isMobile || isTablet)
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
                  child:
                      FirstForm(_firstFormKey, deviceType), // Pass the key here
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child:
                    buildForm(_secondFormKey, deviceType), // Pass the key here
              )
            ],
          )
        : Row(
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
                  child:
                      FirstForm(_firstFormKey, deviceType), // Pass the key here
                ),
              ),

              // Right Content Section
              Flexible(
                flex: 50,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: buildForm(
                      _secondFormKey, deviceType), // Pass the key here
                ),
              ),
            ],
          );
  }

  Widget FirstForm(
      GlobalKey<FormState> formKey, topbar.DeviceScreenType deviceType) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/amz.jpeg",
                  height: 80,
                ),
              ),
              isMobile
                  ? Column(
                      children: [
                        CustomDropdown(
                          label: "Category",
                          hintText:
                              "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                          items: [
                            "Automative, Car & Accessories",
                            "Baby Product, Toys & Educations",
                            "Book, Movie, Music, Video Games, Entertainment",
                            "Industrial, Medical, Scientific Supplies & Office Product",
                            "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                            "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                            "Grocery, Food & Pet Supplies",
                            "Health, Buety, Personal Care & Personal Care Appliances",
                            "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                            "Kitchen, Large & Small Appliances",
                            "Sports Gym & Sporting Equipment",
                            "Others",
                          ],
                          onChanged: (value) {
                            print("Selected Category: $value");
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomDropdown(
                          label: "Category",
                          hintText:
                              "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                          items: [
                            "Automative, Car & Accessories",
                            "Baby Product, Toys & Educations",
                            "Book, Movie, Music, Video Games, Entertainment",
                            "Industrial, Medical, Scientific Supplies & Office Product",
                            "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                            "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                            "Grocery, Food & Pet Supplies",
                            "Health, Buety, Personal Care & Personal Care Appliances",
                            "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                            "Kitchen, Large & Small Appliances",
                            "Sports Gym & Sporting Equipment",
                            "Others",
                          ],
                          onChanged: (value) {
                            print("Selected Category: $value");
                          },
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomDropdown(
                          label: "Category",
                          hintText:
                              "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                          items: [
                            "Automative, Car & Accessories",
                            "Baby Product, Toys & Educations",
                            "Book, Movie, Music, Video Games, Entertainment",
                            "Industrial, Medical, Scientific Supplies & Office Product",
                            "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                            "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                            "Grocery, Food & Pet Supplies",
                            "Health, Buety, Personal Care & Personal Care Appliances",
                            "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                            "Kitchen, Large & Small Appliances",
                            "Sports Gym & Sporting Equipment",
                            "Others",
                          ],
                          onChanged: (value) {
                            print("Selected Category: $value");
                          },
                        ),
                        CustomDropdown(
                          label: "Sub category",
                          hintText:
                              "Coin Collectibles",
                          items: [
                            "Coin Collectibles",
                            "Silver Coins & Bars",
                            "Furniture - Other Products",
                            "Toys - Other Products",
                            "Grocery - Other Products",
                            "Office - Other Products",
                            "Personal Care & Personal Care Appliances",
                            "Health, Buety, Personal Care & Personal Care Appliances",
                            "Health, Personal Care - Other Household Supplies",
                            "Business & Industrial Supplies - Other Product",
                            "Loan & Garden - Other Product",
                            "Luggage - Other Product",
                            "Fine Art",
                            "Baby Product - Other Product",
                            "Apparel - Other Product",
                            "Indoor Lightings - Others",
                            "Sports - Other Product",
                            "Automotive - Other Product",
                            "Consumable Physical Gift Card",
                            "Warranty Services",
                            "Home - Other Product",
                            "Home - Other Subcategories",
                          ],
                          onChanged: (value) {
                            print("Selected Category: $value");
                          },
                        ),
                      ],
                    ),
              SizedBox(height: 20),
              isMobile
                  ? Column(
                      children: [
                        CustomSpinBox(
                          label: "Price",
                          min: 0,
                          max: 1000000,
                          initialValue: 0,
                          step: 1,
                          onChanged: (value) {
                            print("Selected Price: $value");
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomDropdown(
                          label: "Tax",
                          hintText: "FREE GST",
                          items: ["FREE GST", "5%", "12%", "18%", "28%"],
                          onChanged: (value) {
                            print("Selected Tax: $value");
                          },
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomSpinBox(
                          label: "Price",
                          min: 0,
                          max: 1000000,
                          initialValue: 0,
                          step: 1,
                          onChanged: (value) {
                            print("Selected Price: $value");
                          },
                        ),
                        CustomDropdown(
                          label: "Tax",
                          hintText: "FREE GST",
                          items: ["FREE GST", "5%", "12%", "18%", "28%"],
                          onChanged: (value) {
                            print("Selected Tax: $value");
                          },
                        ),
                      ],
                    ),
              SizedBox(height: 20),
             isMobile
                  ? Column(
                      children: [
                        CustomDropdown(
                          label: "Category",
                          hintText:
                              "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                          items: [
                            "Automative, Car & Accessories",
                            "Baby Product, Toys & Educations",
                            "Book, Movie, Music, Video Games, Entertainment",
                            "Industrial, Medical, Scientific Supplies & Office Product",
                            "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                            "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                            "Grocery, Food & Pet Supplies",
                            "Health, Buety, Personal Care & Personal Care Appliances",
                            "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                            "Kitchen, Large & Small Appliances",
                            "Sports Gym & Sporting Equipment",
                            "Others",
                          ],
                          onChanged: (value) {
                            print("Selected Category: $value");
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomDropdown(
                          label: "Category",
                          hintText:
                              "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                          items: [
                            "Automative, Car & Accessories",
                            "Baby Product, Toys & Educations",
                            "Book, Movie, Music, Video Games, Entertainment",
                            "Industrial, Medical, Scientific Supplies & Office Product",
                            "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                            "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                            "Grocery, Food & Pet Supplies",
                            "Health, Buety, Personal Care & Personal Care Appliances",
                            "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                            "Kitchen, Large & Small Appliances",
                            "Sports Gym & Sporting Equipment",
                            "Others",
                          ],
                          onChanged: (value) {
                            print("Selected Category: $value");
                          },
                        ),
                        SizedBox(
                          height: 20,),
                         CustomSpinBox(
                          label: "Price",
                          min: 0,
                          max: 1000000,
                          initialValue: 0,
                          step: 1,
                          onChanged: (value) {
                            print("Selected Price: $value");
                          },
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomDropdown(
                          width: 200,
                          label: "Ship Method",
                          hintText:
                              "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                          items: [
                            "Automative, Car & Accessories",
                            "Baby Product, Toys & Educations",
                            "Book, Movie, Music, Video Games, Entertainment",
                            "Industrial, Medical, Scientific Supplies & Office Product",
                            "Clothing, Fashion, Fashion Accessories, Jewellery, Luggage, Shoes",
                            "Electronics (camera, Mobile, PC, Wireless) & Accessories",
                            "Grocery, Food & Pet Supplies",
                            "Health, Buety, Personal Care & Personal Care Appliances",
                            "Home Decure, Home improvement,Furniture, Outdoor, Lawn Garden",
                            "Kitchen, Large & Small Appliances",
                            "Sports Gym & Sporting Equipment",
                            "Others",
                          ],
                          onChanged: (value) {
                            print("Selected Category: $value");
                          },
                        ),
                        CustomDropdown(
                          width: 200,
                          label: "Area",
                          hintText:
                              "Coin Collectibles",
                          items: [
                            "Coin Collectibles",
                            "Silver Coins & Bars",
                            "Furniture - Other Products",
                            "Toys - Other Products",
                            "Grocery - Other Products",
                            "Office - Other Products",
                            "Personal Care & Personal Care Appliances",
                            "Health, Buety, Personal Care & Personal Care Appliances",
                            "Health, Personal Care - Other Household Supplies",
                            "Business & Industrial Supplies - Other Product",
                            "Loan & Garden - Other Product",
                            "Luggage - Other Product",
                            "Fine Art",
                            "Baby Product - Other Product",
                            "Apparel - Other Product",
                            "Indoor Lightings - Others",
                            "Sports - Other Product",
                            "Automotive - Other Product",
                            "Consumable Physical Gift Card",
                            "Warranty Services",
                            "Home - Other Product",
                            "Home - Other Subcategories",
                          ],
                          onChanged: (value) {
                            print("Selected Category: $value");
                          },
                        ),
                         CustomSpinBox(
                          width: 200,
                          label: "Price",
                          min: 0,
                          max: 1000000,
                          initialValue: 0,
                          step: 1,
                          onChanged: (value) {
                            print("Selected Price: $value");
                          },
                        ),
                      ],
                    ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildForm(
      GlobalKey<FormState> formKey, topbar.DeviceScreenType deviceType) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Contact Us Title
          AutoSizeText(
            "Contact Us",
            style: TextStyle(
              fontSize: deviceType == topbar.DeviceScreenType.mobile
                  ? 18
                  : (deviceType == topbar.DeviceScreenType.tablet ? 20 : 22),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),

          isMobile
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Name",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: deviceType ==
                                    topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: isMobile ? 310 : 310,
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              labelText: "Your Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your name";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your E-mail",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: deviceType ==
                                    topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: isMobile ? 310 : 310,
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your email";
                              }
                              // Basic email validation
                              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                  .hasMatch(value)) {
                                return "Please enter a valid email address";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Name",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: deviceType ==
                                    topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: isMobile ? 310 : 310,
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              labelText: "Your Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your name";
                              }
                              return null;
                            },
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
                            color: Colors.black54,
                            fontSize: deviceType ==
                                    topbar.DeviceScreenType.mobile
                                ? 15
                                : (deviceType == topbar.DeviceScreenType.tablet
                                    ? 15
                                    : 17),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: isMobile ? 310 : 310,
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your email";
                              }
                              // Basic email validation
                              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                  .hasMatch(value)) {
                                return "Please enter a valid email address";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),

          SizedBox(height: 10),
          // Contact Number Field
          Text(
            "Your Contact Number",
            style: TextStyle(
              color: Colors.black54,
              fontSize: deviceType == topbar.DeviceScreenType.mobile
                  ? 15
                  : (deviceType == topbar.DeviceScreenType.tablet ? 15 : 17),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: isMobile ? 310 : 310,
            child: TextFormField(
              controller: _contactNumberController,
              decoration: InputDecoration(
                labelText: "Contact Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your contact number";
                }
                if (value.length != 10 ||
                    !RegExp(r'^[0-9]+$').hasMatch(value)) {
                  return "Please enter a valid 10-digit contact number";
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 10),

          // Department Dropdown
          Text(
            "Choose Concerned Department",
            style: TextStyle(
              color: Colors.black54,
              fontSize: deviceType == topbar.DeviceScreenType.mobile
                  ? 15
                  : (deviceType == topbar.DeviceScreenType.tablet ? 15 : 17),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: isMobile ? 310 : 310,
            child: DropdownButtonFormField<String>(
              value: _selectedDepartment,
              decoration: InputDecoration(
                hintText: "Select a Department",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              items: [
                DropdownMenuItem(
                  value: null,
                  child: Text("Select a Department"),
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
                setState(() {
                  _selectedDepartment = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please select a department";
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 10),

          // Message Field
          Text(
            "Write your message",
            style: TextStyle(
              color: Colors.black54,
              fontSize: deviceType == topbar.DeviceScreenType.mobile
                  ? 15
                  : (deviceType == topbar.DeviceScreenType.tablet ? 15 : 17),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _messageController,
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "Write your Requirements.",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.blue, width: 2),
              ),
              alignLabelWithHint: true,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your message";
              }
              return null;
            },
          ),
          SizedBox(height: 20),

          // Submit Button
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Perform form submission
                print("Form Submitted");
                print("Name: ${_nameController.text}");
                print("Email: ${_emailController.text}");
                print("Contact Number: ${_contactNumberController.text}");
                print("Department: $_selectedDepartment");
                print("Message: ${_messageController.text}");
              }
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
    );
  }
}
