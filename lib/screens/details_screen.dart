import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        child: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: kPrimaryColor,
        ),
      ),
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
