import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';
import 'package:digibells/topbar/topbarcontent.dart' as topbar;

class Webdesigningintro extends StatefulWidget {
  const Webdesigningintro({super.key});

  @override
  State<Webdesigningintro> createState() => _WebdesigningintroState();
}

class _WebdesigningintroState extends State<Webdesigningintro> {
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
    return Stack(
      children: <Widget>[
        // Fullscreen Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/webdesign.jpg', // Background image
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.5), // Adjust overlay opacity
        ),
        // Content overlay
        (isMobile || isTablet)
            ? Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Left Content Section
                    Flexible(
                      child: _buildContentSection(context),
                    ),
                    // Right Form Section
                    Flexible(
                      child: buildForm(deviceType),
                    ),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(100.0),
                child: Row(
                  children: [
                    // Left Content Section
                    Expanded(
                      flex: 3, // Adjust the ratio as per requirement
                      child: _buildContentSection(context),
                    ),
                    SizedBox(width: 40,),
                    // Right Form Section
                    Expanded(
                      flex: 3,
                      child: buildForm(deviceType),
                    ),
                  ],
                ),
              ),
      ],
    );
  }

  Widget _buildContentSection(BuildContext context,
      {bool isMobile = false, bool isTablet = false}) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            "Website Designing Company in Gurgaon",
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white), // Changed to white
          ),
          const SizedBox(height: 20),
          AutoSizeText(
            "The best website designing company in Gurgaon is your one-stop solution for all of your business problems. We are a team of expert website designers, graphic designers, SEO executives, digital marketing experts, and app developers. We are fully dedicated to transforming your online presence into a dynamic and engaging platform. Our commitment to satisfy every customer we serve sets us apart in the world of agencies. Whether you are starting your business and looking to build a successful online business or an established business looking to redesign your websites or boost your online journey, We are always available to take every single step with your business.",
            style: TextStyle(
                fontSize: 16, color: Colors.white), // Changed to white
          ),
          const SizedBox(height: 20),
          AutoSizeText(
            "We are not just a website development company, we are your partners for digital success. Let us transform your dream into a visually stunning website where innovation, aesthetics and functionality are at the core of our website development service in Gurgaon. Join us on this journey to create exceptional digital experiences and together we will shape the future of your online presence.",
            style: TextStyle(
                fontSize: 16, color: Colors.white), // Changed to white
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget buildForm(topbar.DeviceScreenType deviceType) {
    var screenSize = MediaQuery.of(context).size;
    var deviceType = topbar.getDeviceType(screenSize);

    return SingleChildScrollView(
      // Added SingleChildScrollView
      child: Card(
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Contact Us Title
                AutoSizeText(
                  "Contact Us",
                  style: TextStyle(
                    color: red,
                    fontSize: deviceType == topbar.DeviceScreenType.mobile
                        ? 18
                        : (deviceType == topbar.DeviceScreenType.tablet
                            ? 20
                            : 22),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AutoSizeText(
                  "Get a Free Quote",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ), // Changed to white
                ),
                SizedBox(height: 20),
                // Name Field
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
                  // width: double.infinity,
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
                        : (deviceType == topbar.DeviceScreenType.tablet
                            ? 15
                            : 17),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  // width: double.infinity,
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
                        : (deviceType == topbar.DeviceScreenType.tablet
                            ? 15
                            : 17),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  // width: double.infinity,
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
                // Message Field
                Text(
                  "Write your message",
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
                    backgroundColor: Colors.red,
                    minimumSize: const Size(200, 60),
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
    );
  }
}
