import 'package:coffee/widgets/extras_row.dart';
import 'package:coffee/widgets/minus_button.dart';
import 'package:coffee/widgets/plus_button.dart';
import 'package:flutter/material.dart';

class OrderSheet extends StatelessWidget {
  const OrderSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18, top: 36),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFFEFEBE9),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Temprature",
                      style: textTheme.headline3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 18),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25),
                            ),
                            color: Colors.grey[300],
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Hot",
                                style: textTheme.headline2,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                "Cold",
                                style: TextStyle(color: Colors.transparent),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 18),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            color: Color(0xFF473D3A),
                          ),
                          child: Text(
                            "Cold",
                            style: textTheme.headline2
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Quantity",
                      style: textTheme.headline3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const MinusButton(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "2",
                            style: textTheme.headline3?.copyWith(fontSize: 30),
                          ),
                        ),
                        const PlusButton(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Cup",
                  style: textTheme.headline3,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: DropdownButton<String>(
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    underline: Container(),
                    items: <String>["1"]
                        .map((e) =>
                            const DropdownMenuItem<String>(child: Text("1")))
                        .toList(),
                    onChanged: (value) {},
                  ),
                ),
                Text(
                  "Select Size",
                  style: textTheme.headline3,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: DropdownButton<String>(
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    underline: Container(),
                    items: <String>["M"]
                        .map((e) =>
                            const DropdownMenuItem<String>(child: Text("M")))
                        .toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const ExtrasRow(
                    iconData: Icons.square_outlined,
                    extraName: "Sugar",
                    quantity: "3 Cubes",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ExtrasRow(
                    iconData: Icons.square_outlined,
                    extraName: "Ice",
                    quantity: "5 Cubes",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ExtrasRow(
                    iconData: Icons.icecream_outlined,
                    extraName: "Cream",
                    quantity: "Yes",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: textTheme.headline1?.copyWith(fontSize: 22),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "\$9,50",
                            style: TextStyle(
                              fontFamily: 'varela',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFDAB68C),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              color: Color(0xFF473D3A)),
                          child: const Center(
                            child: Text(
                              "Place Order",
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
