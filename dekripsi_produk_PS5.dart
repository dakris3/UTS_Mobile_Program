import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  final Product product;

  const ProductDescription({Key key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text(
                  "PS5 Console Sony Playstation 5",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  width: getProportionateScreenWidth(64),
                  decoration: BoxDecoration(
                      color: product.isFavorite
                          ? Color(0xFFFFE6E6)
                          : Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Image.asset(
                    'assets/images/Heart.png',
                    color: product.isFavorite
                        ? Color(0xFFFF4848)
                        : Color(0xFFDBDEE4),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(64),
                ),
                child: Text(
                  "PlayStation 5 menggunakan AMD Zen 2 dengan 8 inti yang berjalan hingga 3.5 GHz. GPU menggunakan system-on-chip (SOC) berdasarkan AMD RDNA 2, dengan 36 compute units yang berjalan hingga 2.23 GHz, dan mampu menghasilkan 10.28 TFLOPS. CPU dan GPU menggunakan teknologi AMD SmartShift yang mengatur frekuensi berdasarkan penggunaan, untuk mencapai performa dan penggunaan daya yang ideal. Mark Cerny megatakan bahwa perbandingan langsung berdasarkan compute unit maupun FLOPS mungkin tidak akurat. GPU memiliki dukungan perangkat keras untuk ray-tracing, memungkinkan ray-tracing secara realtime. PS 5 menggunakan 16GB GDDR6 SDRAM dengan bandwith 448 GB/s.",
                  maxLines: 7,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: 10,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "See More Detail",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.arrow_back_ios,
                          size: 12, color: kPrimaryColor),
                    ],
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
