import 'package:flutter/material.dart';
import 'package:green_grocery/src/components/banner/card_banner.dart';

class BannerList extends StatelessWidget {
  const BannerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CardBanner('assets/img/compras4.png'),
              CardBanner('assets/img/compras2.jpg'),
               CardBanner('assets/img/compras3.jpg'),
              
            ],
          )),
    );
  }
}
