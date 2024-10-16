import 'package:flutter/material.dart';

class SmallMediumLargeButton extends StatefulWidget {
  const SmallMediumLargeButton({super.key});

  @override
  State<SmallMediumLargeButton> createState() {
    return _SmallMediumLargeButton();
  }
}

class _SmallMediumLargeButton extends State<SmallMediumLargeButton> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 62, 62, 62),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildToggleButton('Small', 0),
          _buildDivider(),
          _buildToggleButton('Medium', 1),
          _buildDivider(),
          _buildToggleButton('Large', 2),
        ],
      ),
    );
  }

  Widget _buildToggleButton(String text, int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.white70,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 1,
      height: 16,
      color: Colors.grey,
    );
  }
}
