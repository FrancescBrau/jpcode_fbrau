import 'package:flutter/material.dart';
import 'widgets/category_container.dart';
import 'widgets/category_dropdown.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/hintergruende/bg_mainscreen.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Positioned(
            top: 70,
            left: 25,
            right: 10,
            child: Center(
              child: Text(
                "Choose Your Favourite Snack",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryDropdown(),
                  SizedBox(width: 10),
                  CategoryContainer(categoryName: 'Salty'),
                  SizedBox(width: 10),
                  CategoryContainer(categoryName: 'Sweet'),
                  SizedBox(width: 10),
                  CategoryContainer(categoryName: 'Desserts'),
                  SizedBox(width: 10),
                  CategoryContainer(categoryName: 'Spicy'),
                  SizedBox(width: 10),
                  CategoryContainer(categoryName: 'Others'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
