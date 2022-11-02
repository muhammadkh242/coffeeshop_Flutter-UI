import 'package:coffee/widgets/ingredient_item.dart';
import 'package:coffee/widgets/order_sheet.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3B2B7),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Color(0xFFF3B2B7)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Caramel\nMacchiato",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            ?.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Freshly streamed milk with vanilla flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.",
                          style: textTheme.headline2
                              ?.copyWith(color: Colors.white),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFEBE9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Preparation time",
                            style: textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5min",
                            style: textTheme.headline2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ingredients",
                            style: textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 110,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                IngredientItem(
                                  name: "Water",
                                  iconData: Icons.water_drop_outlined,
                                  color: Color(0xFF6FC5DA),
                                ),
                                IngredientItem(
                                  name: "Brewed Espresso",
                                  iconData: Icons.coffee_outlined,
                                  color: Color(0xFF615955),
                                ),
                                IngredientItem(
                                  name: "Sugar",
                                  iconData: Icons.crop_square_rounded,
                                  color: Color(0xFFF39595),
                                ),
                                IngredientItem(
                                  name: "Toffee Nut Syrup",
                                  iconData: Icons.circle_outlined,
                                  color: Color(0xFF8FC28A),
                                ),
                                IngredientItem(
                                  name: "Natural Flavors",
                                  iconData: Icons.crop_square_rounded,
                                  color: Color(0xFF3B8079),
                                ),
                                IngredientItem(
                                  name: "Vanilla Syrup",
                                  iconData: Icons.local_drink,
                                  color: Color(0xFFF8B870),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Text(
                            "Nutrition Information",
                            style: textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Calories",
                                    style: textTheme.headline4,
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    "250",
                                    style: textTheme.headline5,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Proteins",
                                    style: textTheme.headline4,
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    "10g",
                                    style: textTheme.headline5,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Caffeine",
                                    style: textTheme.headline4,
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    "150mg",
                                    style: textTheme.headline5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: 178,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/pinkcup.png"),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15), child: Divider()),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  context: context,
                  builder: (context) => const OrderSheet(),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Color(0xFF473D3A)),
                child: const Center(
                  child: Text(
                    "Make Order",
                    style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
