import 'package:flutter/material.dart';

class CoffeeImage extends StatelessWidget {
  const CoffeeImage({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        width: 175,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            image:
                DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
      ),
    );
  }
}
