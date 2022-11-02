import 'package:coffee/widgets/plus_button.dart';
import 'package:flutter/material.dart';

import 'minus_button.dart';

class ExtrasRow extends StatelessWidget {
  const ExtrasRow(
      {Key? key,
      required this.iconData,
      required this.extraName,
      required this.quantity})
      : super(key: key);
  final IconData iconData;
  final String extraName;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.13,
          child: Column(
            children: [
              Icon(
                iconData,
                size: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                extraName,
                style: textTheme.headline2,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MinusButton(),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Center(
                  child: Text(
                    quantity,
                    style: textTheme.headline3,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const PlusButton(),
            ],
          ),
        ),
      ],
    );
  }
}
