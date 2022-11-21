import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, 
    required this.itemIndex,
    required this.product,
    required this.onTap,
  });

  final int itemIndex;
  final Product product;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                height: 190.0,
                width: 200.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Image.asset(
                  product.image,
                ),
              ),
            ),
            Positioned(
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding / 2),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 5,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text(
                          'السعر: \$${product.price}',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
