import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/details/color_dot.dart';
import 'package:store_app/widgets/details/product_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'السعر: \$${product.price}',
                style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: const TextStyle(
              fontSize: 19.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
