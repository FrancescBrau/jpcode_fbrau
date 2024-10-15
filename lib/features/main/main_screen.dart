import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jpcode/features/main/widgets/central_card.dart';
import 'package:jpcode/features/main/widgets/scroll/baluscard.dart';
import 'package:jpcode/features/main/widgets/scroll/creamiescard.dart';
import 'package:jpcode/features/main/widgets/scroll/mogliscard.dart';
import 'package:jpcode/features/main/widgets/scroll/scroll_cards.dart';
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
          //background image code starts here
          Image.asset(
            "assets/images/hintergruende/bg_mainscreen.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity, //background image code ends here
          ),
          const Positioned(
            //title code starts here
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
          ), //tittle code ends here
          const Positioned(
            //categories and dropdown code starts here
            top: 170,
            left: 25,
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
          ), //categories and dropdown ends here
          Positioned(
            top: 230,
            left: 25,
            child: Stack(
              children: [
                Image.asset("assets/images/details/Top Card.png"),
              ],
            ),
          ),

          const Positioned(
            //here is code for burger card, found in ../widgets/cards.dart
            top: 230,
            left: 25,
            right: 20,
            child: BurgerCard(), //code burger ends here
          ),
          const Positioned(
            //subtitle code starts here
            top: 500,
            left: 25,
            child: Text(
              "We Recommend",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //subtittle code ends here
          Positioned(
            top: 550,
            left: 25,
            right: 0,
            child: SizedBox(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  MoglisCard(),
                  BalusCard(),
                  CreamiesCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
