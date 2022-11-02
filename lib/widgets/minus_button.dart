import 'package:flutter/material.dart';

class MinusButton extends StatelessWidget {
  const MinusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: Color(0xFFDAB68C), shape: BoxShape.circle),
      padding: const EdgeInsets.all(5),
      child: const Icon(
        Icons.remove,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
