import 'package:flutter/material.dart';
import 'package:jpcode/features/start/widgets/cupckae_image.dart';
import 'widgets/order_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/hintergruende/bg_startscreen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const CupcakeImage(),
              const SizedBox(height: 200),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
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
                    const SizedBox(
                      height: 40,
                      width: 400,
                    ),
                    OrderButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/order');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
