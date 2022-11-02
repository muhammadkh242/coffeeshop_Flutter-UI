import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: Color(0xFFDAB68C), shape: BoxShape.circle),
      padding: const EdgeInsets.all(5),
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
