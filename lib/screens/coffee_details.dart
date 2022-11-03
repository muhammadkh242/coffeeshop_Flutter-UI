import 'package:flutter/material.dart';

import '../widgets/ingredient_item.dart';
import '../widgets/order_sheet.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  const CoffeeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
/*
          SliverAppBar(

            stretch: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                margin: const EdgeInsets.only(left: 60),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "Caramel Macchiato",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              background: Image.asset(
                "assets/images/coffee.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
*/
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: mediaQuery.size.height -
                          mediaQuery.viewPadding.top -
                          mediaQuery.viewPadding.bottom -
                          kToolbarHeight,
                      width: mediaQuery.size.width,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3B2B7),
                      ),
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
                          Row(
                            children: [
                              Flexible(
                                flex: 2,
                                child: Text(
                                  "Freshly streamed milk with vanilla flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.",
                                  style: textTheme.headline2
                                      ?.copyWith(color: Colors.white),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: mediaQuery.size.width,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEFEBE9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
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
                  ],
                ),
              ],
            ),
          ),
/*
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
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
            ),
          )
*/
        ],
      ),
    );
  }
}
