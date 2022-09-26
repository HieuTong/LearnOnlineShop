import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_flutter/constants.dart';
import 'package:online_shop_flutter/models/Product.dart';
import 'package:online_shop_flutter/screens/details/components/cart_counter.dart';
import 'package:online_shop_flutter/screens/details/components/color_dot.dart';
import 'package:online_shop_flutter/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Column(children: <Widget>[
                    ColorAndSize(product: product),
                    SizedBox(height: kDefaultPadding / 2),
                    Description(product: product),
                    SizedBox(height: kDefaultPadding / 2),
                    CounterWithFavoriteButton(),
                    SizedBox(height: kDefaultPadding / 2),
                    AddToCart(product: product)
                  ]),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
