import 'package:flutter/material.dart';
import 'package:digibells/utills/constant.dart';

class Socialicon extends StatefulWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onTap; // Added onTap parameter

  const Socialicon({
    super.key,
    required this.icon,
    required this.color,
    this.onTap, // Nullable, so it can be optional
  });

  @override
  State<Socialicon> createState() => _SocialiconState();
}

class _SocialiconState extends State<Socialicon> {
  bool ishoverd = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap, // Trigger onTap when the icon is tapped
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            ishoverd = true;
          });
        },
        onExit: (event) {
          setState(() {
            ishoverd = false;
          });
        },
        child: AnimatedContainer(
          height: 40,
          width: 40,
          duration: const Duration(milliseconds: 400),
          decoration: BoxDecoration(
            color: ishoverd
                ? widget.color
                : white24, // Change background color
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Icon(
                widget.icon,
                size: 20,
                color: ishoverd ? black54 : white, // Icon color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
