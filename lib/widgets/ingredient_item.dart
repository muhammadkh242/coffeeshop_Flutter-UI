import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  const IngredientItem(
      {Key? key,
      required this.name,
      required this.iconData,
      required this.color})
      : super(key: key);
  final String name;
  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 35,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 60,
            child: Center(
              child: Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}
