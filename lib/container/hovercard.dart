import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';

class HoverCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: Center(
        child: Container(
          child: Wrap(
            spacing: 20, // Space between cards
            runSpacing: 20,
            children: [
              buildHoverCard(
                title: "Years Experience",
                rank: "10",
                iconData: Icons.wb_sunny_rounded, // Pass IconData instead
              ),
              buildHoverCard(
                title: "Team Members",
                rank: "83",
                iconData: Icons.supervised_user_circle_outlined,
              ),
              buildHoverCard(
                title: "Satisfied Clients",
                rank: "1277",
                iconData: Icons.supervised_user_circle,
              ),
              buildHoverCard(
                title: "Digital Projects",
                rank: "122",
                iconData: Icons.system_security_update_good_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHoverCard({
    required String title,
    required String rank,
    required IconData iconData, // Update parameter type to IconData
  }) {
    return HoverCard(
      title: title,
      rank: rank,
      iconData: iconData,
    );
  }
}

class HoverCard extends StatefulWidget {
  final String title;
  final String rank;
  final IconData iconData; // Use IconData

  const HoverCard({
    Key? key,
    required this.title,
    required this.rank,
    required this.iconData,
  }) : super(key: key);

  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: 300,
        height: 300,
        margin: EdgeInsets.only(bottom: isHovered ? 20 : 0),
        decoration: BoxDecoration(
          color: isHovered ? white : grey250,
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: black26,
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: Offset(0, 10),
                  ),
                ]
              : [
                  BoxShadow(
                    color: white,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                widget.iconData, // Use IconData here
                size: 80,
                color: orange,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              Text(
                widget.rank as String, // Display rank as text
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}