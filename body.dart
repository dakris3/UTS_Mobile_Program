import 'package:flutter/material.dart';
import 'package:shopeasy/screens/isiapp/Detail%20screen/Component/product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, required this.product}) : super(key: key);

  Widget buildSmallPreview(int index) {
    return SizedBox(
      height: getProportionateScreenWidth(48),
      width: getProportionateScreenWidth(48),
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(product.images[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        Container(
          margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
          padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(product.images[0]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              product.images.length,
              (index) => buildSmallPreview(index),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.screenWidth * 0.15,
            right: SizeConfig.screenWidth * 0.15,
            top: getProportionateScreenWidth(15),
            bottom: getProportionateScreenWidth(40),
          ),
          child: DefaultButton(
            text: "Add to Cart",
            press: () {},
          ),
        ),
      ],
    );
  }
}
