import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/list_of_products.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widgets/home/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: kDefaultPadding,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70.0),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
