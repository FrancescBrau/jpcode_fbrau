import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryName;
  final bool isSelected;

  const CategoryContainer({
    required this.categoryName,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      padding: const EdgeInsets.symmetric(),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.3),
        border: Border.all(
          color: isSelected ? Colors.white : Colors.white70,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.white70,
              fontSize: 16,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
