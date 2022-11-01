import 'package:coffee/widgets/coffee_image.dart';
import 'package:coffee/widgets/coffee_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome, Nadia",
                    style: textTheme.headline1,
                  ),
                  const CircleAvatar(
                    radius: 20,
                    foregroundImage: AssetImage("assets/images/model.jpg"),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Let's select the best taste for your \n next coffee break!",
                style: textTheme.headline2,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Taste of the week",
                    style: textTheme.headline3,
                  ),
                  Text(
                    "See all",
                    style: textTheme.headline2?.copyWith(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => coffeeItems()[i],
                    separatorBuilder: (context, i) => const SizedBox(
                          width: 20,
                        ),
                    itemCount: coffeeItems().length),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore nearby",
                    style: textTheme.headline3,
                  ),
                  Text(
                    "See all",
                    style: textTheme.headline2?.copyWith(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CoffeeImage(imagePath: "assets/images/coffee.jpg"),
                    CoffeeImage(imagePath: "assets/images/coffee2.jpg"),
                    CoffeeImage(imagePath: "assets/images/coffee3.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> coffeeItems() => [
        const CoffeeItem(
            imagePath: 'assets/images/starbucks.png',
            coffeeName: 'Caffe Misto',
            shopName: 'Coffeeshop',
            description:
                'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
            price: '\$4.99',
            isFavorite: false),
        const CoffeeItem(
            imagePath: 'assets/images/starbucks.png',
            coffeeName: 'Caffe Latte',
            shopName: 'BrownHouse',
            description:
                'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
            price: '\$3.99',
            isFavorite: false)
      ];
}
