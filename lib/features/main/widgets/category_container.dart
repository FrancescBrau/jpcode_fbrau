import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryName;

  const CategoryContainer({
    required this.categoryName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      padding: const EdgeInsets.symmetric(),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        border: Border.all(
          color: Colors.white70,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
