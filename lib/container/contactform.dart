import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Contactform extends StatefulWidget {
  const Contactform({super.key});

  @override
  State<Contactform> createState() => _ContactformState();
}

class _ContactformState extends State<Contactform> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];
  bool showMap = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _markers.add(Marker(
        markerId: MarkerId("mylocation"),
        position: LatLng(28.5818476, 77.3635537)));
    if (_markers.isNotEmpty) {
      setState(() {
        showMap = true;
      });
    }
  }

  @override
  void dispose() {
    mapController?.dispose(); // Dispose of the map controller
    super.dispose();
  }

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
    // Determine image height based on device type
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    bool ishub = deviceType == topbar.DeviceScreenType.hubmax;

    return (isMobile || isTablet)
        ? Column(
            children: [
              SizedBox(
                height: isTablet
                    ? 400
                    : ishub
                        ? 400
                        : 300,
                width: isTablet ? 700 : 500,
                child: showMap
                    ? GoogleMap(
                        onMapCreated: (controller) {
                          setState(() {
                            mapController = controller;
                          });
                        },
                        markers: Set<Marker>.of(_markers),
                        mapType: MapType.terrain,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(28.5818476, 77.3635537),
                          zoom: 20,
                        ),
                      )
                    : Center(child: CircularProgressIndicator()),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: buildForm(deviceType),
              )
            ],
          )
        : Row(
            children: [
              // Left Image Section
              Expanded(
                flex: 50,
                child: showMap
                    ? GoogleMap(
                        onMapCreated: (controller) {
                          setState(() {
                            mapController = controller;
                          });
                        },
                        markers: Set<Marker>.of(_markers),
                        mapType: MapType.terrain,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(28.5818476, 77.3635537),
                          zoom: 20,
                        ),
                      )
                    : Center(child: CircularProgressIndicator()),
              ),

              // Right Content Section
              Flexible(
                flex: 50,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: buildForm(deviceType),
                ),
              ),
            ],
          );
  }

  Widget buildForm(topbar.DeviceScreenType deviceType) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    // Determine image height based on device type
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    // Extracted form widget for readability
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

          // Name Field
          Text(
            "Your Name",
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
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
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
          SizedBox(height: 10),

          // Email Field
          Text(
            "Your E-mail",
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
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your email";
                }
                // Basic email validation
                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }
                return null;
              },
            ),
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
                labelText: "Select a Department",
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
