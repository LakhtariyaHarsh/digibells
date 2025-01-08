import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class CustomDropdown extends StatefulWidget {
  final String label;
  final String hintText;
  final List<String> items;
  final String? initialValue;
  final double width;
  final Function(String?)? onChanged;

  const CustomDropdown({
    required this.label,
    required this.hintText,
    required this.items,
    this.initialValue,
    this.onChanged,
    this.width = double.infinity, // Default to double.infinity
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: widget.width, // Use the provided width
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonFormField<String>(
              isExpanded: true,
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              value: selectedValue,
              items: widget.items
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(value);
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

// CustomSpinBox widget

class CustomSpinBox extends StatefulWidget {
  final String label;
  final double min;
  final double max;
  final double initialValue;
  final double step;
  final double width;
  final Function(double)? onChanged;

  const CustomSpinBox({
    required this.label,
    required this.min,
    required this.max,
    required this.initialValue,
    required this.step,
    this.onChanged,
    this.width = double.infinity, // Default to double.infinity
  });

  @override
  _CustomSpinBoxState createState() => _CustomSpinBoxState();
}

class _CustomSpinBoxState extends State<CustomSpinBox> {
  late double currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: widget.width, // Use the provided width
          child: SpinBox(
            min: widget.min,
            max: widget.max,
            value: currentValue,
            step: widget.step,
            textStyle: TextStyle(fontSize: 14),
            incrementIcon: Icon(
              Icons.arrow_drop_up,
              size: 24,
              color: Colors.blue,
            ),
            decrementIcon: Icon(
              Icons.arrow_drop_down,
              size: 24,
              color: Colors.blue,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            onChanged: (value) {
              setState(() {
                currentValue = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
            },
          ),
        ),
      ],
    );
  }
}
