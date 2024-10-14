import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OrderButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 5,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.black,
        ).copyWith(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) => Colors.transparent,
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 246, 64, 115),
                Color.fromARGB(255, 246, 185, 55)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            alignment: Alignment.center,
            child: const Text('Order Now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
