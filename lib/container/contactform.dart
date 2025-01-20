import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Contactform extends StatefulWidget {
  const Contactform({super.key});

  @override
  State<Contactform> createState() => _ContactformState();
}

class _ContactformState extends State<Contactform> {
  // Controllers and form key
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();
  String? _selectedDepartment;

  late GoogleMapController mapController;
  List<Marker> _markers = [];
  bool showMap = true;

  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId("mylocation"),
      position: LatLng(28.5818476, 77.3635537),
    ));
    if (_markers.isNotEmpty) {
      setState(() {
        showMap = true;
      });
    }
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;
    bool isTablet = deviceType == topbar.DeviceScreenType.tablet;
    bool ishub = deviceType == topbar.DeviceScreenType.hubmax;

    return (isMobile || isTablet)
        ? Column(
            children: [
              SizedBox(
                height: isTablet ? 400 : (ishub ? 400 : 300),
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
                          zoom: 15,
                        ),
                      )
                    : Center(child: CircularProgressIndicator()),
              ),
              SizedBox(height: 20),
              SizedBox(
                child: buildForm(deviceType),
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                flex: 50,
                child: SizedBox(
                  height: 600, // Ensure it has a finite height
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
                            zoom: 15,
                          ),
                        )
                      : Center(child: CircularProgressIndicator()),
                ),
              ),
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
    bool isMobile = deviceType == topbar.DeviceScreenType.mobile;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            "Contact Us",
            style: TextStyle(
              fontSize: isMobile ? 18 : 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          buildTextField(
              "Your Name", _nameController, "Please enter your name"),
          SizedBox(height: 10),
          buildTextField(
              "Your Email", _emailController, "Please enter a valid email",
              isEmail: true),
          SizedBox(height: 10),
          buildTextField("Your Contact Number", _contactNumberController,
              "Please enter a valid 10-digit contact number",
              isPhone: true),
          SizedBox(height: 10),
          buildDropdownField(),
          SizedBox(height: 10),
          buildMessageField(),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
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

  Widget buildTextField(
      String label, TextEditingController controller, String validationMsg,
      {bool isEmail = false, bool isPhone = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.black54, fontSize: 15),
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
          ),
          keyboardType: isEmail
              ? TextInputType.emailAddress
              : (isPhone ? TextInputType.phone : TextInputType.text),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return validationMsg;
            }
            if (isEmail && !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return "Please enter a valid email address";
            }
            if (isPhone &&
                (value.length != 10 || !RegExp(r'^[0-9]+$').hasMatch(value))) {
              return "Please enter a valid 10-digit contact number";
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget buildDropdownField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Choose Concerned Department",
          style: TextStyle(color: Colors.black54, fontSize: 15),
        ),
        SizedBox(height: 10),
        DropdownButtonFormField<String>(
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
            DropdownMenuItem(value: null, child: Text("Select a Department")),
            DropdownMenuItem(value: "Sales", child: Text("Sales")),
            DropdownMenuItem(value: "Support", child: Text("Support")),
            DropdownMenuItem(
                value: "Account & Billing", child: Text("Account & Billing")),
          ],
          onChanged: (value) {
            setState(() {
              _selectedDepartment = value;
            });
          },
          validator: (value) =>
              value == null ? "Please select a department" : null,
        ),
      ],
    );
  }

  Widget buildMessageField() {
    return TextFormField(
      controller: _messageController,
      maxLines: 4,
      decoration: InputDecoration(
        labelText: "Write your Requirements.",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        alignLabelWithHint: true,
      ),
      validator: (value) =>
          value == null || value.isEmpty ? "Please enter your message" : null,
    );
  }
}
