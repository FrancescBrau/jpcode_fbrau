import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.remove_circle_outline,
            size: 32,
            color: Colors.grey,
          ),
          onPressed: () => setState(() => _quantity > 1 ? _quantity-- : null),
        ),
        const SizedBox(width: 8),
        Text(
          '$_quantity',
          style: const TextStyle(color: Colors.white, fontSize: 32),
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: const Icon(
            Icons.add_circle_outline,
            size: 32,
            color: Colors.grey,
          ),
          onPressed: () => setState(() => _quantity++),
        ),
      ],
    );
  }
}
