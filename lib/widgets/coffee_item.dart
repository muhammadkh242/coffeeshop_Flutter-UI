import 'package:flutter/material.dart';

import '../screens/details.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem(
      {Key? key,
      required this.imagePath,
      required this.coffeeName,
      required this.shopName,
      required this.description,
      required this.price,
      required this.isFavorite})
      : super(key: key);
  final String imagePath;
  final String coffeeName;
  final String shopName;
  final String description;
  final String price;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 14,
                    bottom: 14,
                    top: 48,
                  ),
                  //margin: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color(0xFFDAB68C)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shopName,
                        style: const TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        coffeeName,
                        style: const TextStyle(
                            fontFamily: 'varela',
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            // fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price,
                            style: const TextStyle(
                                fontFamily: 'varela',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742)),
                          ),
                          const Icon(
                            Icons.favorite,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Image.asset(
              imagePath,
              scale: 3,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DetailsScreen()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 73, vertical: 14),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Color(0xFF473D3A),
            ),
            child: const Text(
              "Order Now",
              style: TextStyle(
                fontFamily: 'nunito',
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
