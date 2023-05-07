import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      //background warna putih
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
      //karena ukuran AppBar secara default kurang besar
      //kita akan membuat CustomAppBar
    );
  }
}

// lalu kita perlu mengoper  produk ke detail screen
// karena kita menggunakan route kita perlu membuat sebuah argument class

class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({@required this.product});
}
