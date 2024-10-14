import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jpcode/features/start/widgets/order_popup.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/hintergruende/bg_startscreen.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 125,
            left: -12,
            child: Transform.scale(
              scale: 1.1,
              child: Image.asset('assets/images/grafs/poulet.png'),
            ),
          ),
          Positioned(
            bottom: 90,
            child: Image.asset('assets/images/details/T2.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 79, 79, 79)
                          .withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const OrderPopUp(),
                  ),
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
