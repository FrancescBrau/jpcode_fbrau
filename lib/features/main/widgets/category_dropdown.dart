import 'package:flutter/material.dart';

class CategoryDropdown extends StatefulWidget {
  const CategoryDropdown({super.key});

  @override
  _CategoryDropdownState createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
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
      child: DropdownButton<String>(
        isExpanded: true,
        underline: const SizedBox.shrink(),
        iconEnabledColor: Colors.white70,
        iconSize: 20,
        value: selectedCategory,
        hint: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fastfood,
                color: Colors.white70,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  "All categories",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        items: <String>[
          'All categories',
          'Salty',
          'Sweet',
          'Desserts',
          'Spicy',
          'Others',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedCategory = newValue;
          });
        },
        dropdownColor: Colors.white70,
      ),
    );
  }
}
