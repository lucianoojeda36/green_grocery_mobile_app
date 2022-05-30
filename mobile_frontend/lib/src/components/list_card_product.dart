import 'package:flutter/material.dart';
import 'package:green_grocery/src/components/card_product.dart';

class ListCardProduct extends StatelessWidget {
  final repositoriesList ;
  const ListCardProduct(this.repositoriesList,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // print('========dsfgfdgdf=======>:${repositoriesList}');
    return Flexible(
      flex: 1,
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: 6,
        itemBuilder: (context, i) {
          return CardProduct(repositoriesList);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 5,
          mainAxisExtent: 264,
        ),
      ),
    );
  }
}
