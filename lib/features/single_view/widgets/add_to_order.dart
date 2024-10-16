import 'package:flutter/material.dart';

class AddToOrderButton extends StatelessWidget {
  const AddToOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 50,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 248, 61, 189),
              Color.fromARGB(255, 246, 109, 55)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white54,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 76, 76, 76),
              offset: Offset(0, 6),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ]),
      child: Container(
        alignment: Alignment.center,
        child: const Text(
          'Add to order for ₳ 8.99',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
