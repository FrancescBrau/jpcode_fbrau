import 'package:flutter/material.dart';
import 'order_button.dart';

class OrderPopUp extends StatelessWidget {
  const OrderPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Feeling Snackish Today?',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Explore Angi's most popular snack selection and get instantly happy.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 40),
        OrderButton(
          onPressed: () {
            Navigator.pushNamed(context, '/order');
          },
        ),
      ],
    );
  }
}
