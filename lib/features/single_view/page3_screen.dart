import 'package:flutter/material.dart';
import 'package:jpcode/features/single_view/widgets/central_container.dart';
import 'package:jpcode/features/single_view/widgets/small_medium_large_button.dart';

class SingleViewScreen extends StatefulWidget {
  const SingleViewScreen({super.key});

  @override
  State<SingleViewScreen> createState() => _SingleViewScreenState();
}

class _SingleViewScreenState extends State<SingleViewScreen> {
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
            top: 60,
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
          Positioned(
            top: 95,
            left: 0,
            right: 0,
            child: Container(
                height: 800,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 68, 48, 41),
                      Color.fromARGB(255, 8, 35, 57),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                          icon: const Icon(Icons.close,
                              color: Colors.white70, size: 28),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    )
                  ],
                )),
          ),
          Positioned(
            top: -35,
            left: -20,
            right: 0,
            child: Transform.scale(
              scale: 0.8,
              child: Image.asset("assets/images/grafs/cat cupcakes_3D.png"),
            ),
          ),
          const Positioned(top: 270, child: CentralCard()),
          const Positioned(
            top: 630,
            left: 10,
            child: SmallMediumLargeButton(),
          )
        ],
      ),
    );
  }
}
