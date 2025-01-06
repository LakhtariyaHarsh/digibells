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
  bool showmap = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _markers.add(Marker(
        markerId: MarkerId("mylocation"),
        position: LatLng(28.5818476, 77.3635537)));
    if (_markers.isNotEmpty) {
      setState(() {
        showmap = true;
      });
    }
  }

  @override
  void dispose() {
    mapController?.dispose(); // Dispose of the map controller
    super.dispose();
  }

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
                  child: showmap
                      ? GoogleMap(
                          onMapCreated: (controller) {
                            setState(() {
                              mapController = controller;
                            });
                          },
                          markers: Set<Marker>.of(_markers),
                          mapType: MapType.terrain,
                          initialCameraPosition: CameraPosition(
                              target: LatLng(28.5818476, 77.3635537), zoom: 13))
                      : CircularProgressIndicator(
                          color: Colors.amberAccent,
                        )),
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
            children: [
              // Left Image Section
              Expanded(
                flex: 50,
                child: GoogleMap(
                  onMapCreated: (controller) {
                    if (mounted) {
                      setState(() {
                        mapController = controller;
                      });
                    }
                  },
                  markers: Set<Marker>.of(_markers),
                  mapType: MapType.terrain,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(28.5818476, 77.3635537),
                    zoom: 20,
                  ),
                ),
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
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    bool ishub = deviceType == topbar.DeviceScreenType.hubmax;
    // Extracted form widget for readability
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Name",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: deviceType == topbar.DeviceScreenType.mobile
                        ? 15
                        : (deviceType == topbar.DeviceScreenType.tablet
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
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                        borderSide: BorderSide(
                            color: Colors.blue, width: 2), // Blue border
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
                    fontSize: deviceType == topbar.DeviceScreenType.mobile
                        ? 15
                        : (deviceType == topbar.DeviceScreenType.tablet
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
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                        borderSide: BorderSide(
                            color: Colors.blue, width: 2), // Blue border
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
                    fontSize: deviceType == topbar.DeviceScreenType.mobile
                        ? 15
                        : (deviceType == topbar.DeviceScreenType.tablet
                            ? 15
                            : 17),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: isMobile ? 310 : 310, // Fixed width for the TextField
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Your Name",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                        borderSide: BorderSide(
                            color: Colors.blue, width: 2), // Blue border
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
                    fontSize: deviceType == topbar.DeviceScreenType.mobile
                        ? 15
                        : (deviceType == topbar.DeviceScreenType.tablet
                            ? 15
                            : 17),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: isMobile ? 310 : 310, // Fixed width for the TextField
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Select a Department",
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
                    value: null, // Set the default value or selected value here
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
                : (deviceType == topbar.DeviceScreenType.tablet ? 15 : 17),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: TextField(
            maxLines: 5, // Number of lines for the textarea
            decoration: InputDecoration(
              labelText: "Write your Requirements.",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
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
    );
  }
}
