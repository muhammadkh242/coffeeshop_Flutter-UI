import 'package:coffee/widgets/ingredient_item.dart';
import 'package:coffee/widgets/order_sheet.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: const Color(0xFFF3B2B7),
                  flexibleSpace: FlexibleSpaceBar(
                    title: Align(
                      alignment: AlignmentDirectional.bottomStart,
                      child: SizedBox(
                        height: mediaQuery.size.height * 0.06,
                        child: FittedBox(
                          child: Text(
                            "Caramel\nMacchiato",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    background: Container(
                      color: const Color(0xFFF3B2B7),
                    ),
                  ),
                  pinned: true,
                  expandedHeight: mediaQuery.size.height * 0.1,
                  stretch: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          height: mediaQuery.size.height -
                              mediaQuery.viewPadding.top -
                              mediaQuery.viewPadding.bottom -
                              kToolbarHeight,
                          width: mediaQuery.size.width,
                          decoration:
                              const BoxDecoration(color: Color(0xFFF3B2B7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      "Freshly streamed milk with vanilla flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.",
                                      style: textTheme.headline2?.copyWith(
                                          color: Colors.white, fontSize: 18),
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
                              Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      color: const Color(0xFF473D3A),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "4.2",
                                            style:
                                                textTheme.headline5?.copyWith(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                " / 5",
                                                style: textTheme.headline5
                                                    ?.copyWith(fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 75,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 40,
                                              child: Container(
                                                height: 35.0,
                                                width: 35.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.5),
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xFFF3B2B7),
                                                    style: BorderStyle.solid,
                                                    width: 1,
                                                  ),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/model2.jpg",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 20,
                                              child: Container(
                                                height: 35.0,
                                                width: 35.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.5),
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xFFF3B2B7),
                                                    style: BorderStyle.solid,
                                                    width: 1,
                                                  ),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/model.jpg",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 35.0,
                                              width: 35.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(17.5),
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFFF3B2B7),
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                ),
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                    "assets/images/model2.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "+27more",
                                        style: textTheme.headline2?.copyWith(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
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
                        Positioned(
                          top: (mediaQuery.size.height) * 0.1,
                          right: -46,
                          child: Image(
                            image:
                                const AssetImage("assets/images/pinkcup.png"),
                            fit: BoxFit.cover,
                            width: mediaQuery.size.width * 0.65,
                            height: mediaQuery.size.height * 0.45,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
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
          ),
        ],
      ),
    );
  }
}
