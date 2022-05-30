import 'package:flutter/material.dart';

// class CardBanner extends StatelessWidget {
//   const CardBanner({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 10,right:10),
//       child: Card(
//           child: InkWell(
//               splashColor: Colors.blue.withAlpha(30),
//               onTap: () {
//                 debugPrint('Card tapped.');
//               },
//               child: SizedBox(
//                 width: 300,
//                 child: Column(
//                   children: [
//                     Flexible(
//                       flex: 2,
//                       child: Image.asset(
//                         'assets/img/compras1.jpg',
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     Flexible(
//                       flex: 1,
//                       child: Text('imagen1'),
//                     ),
//                   ],
//                 ),
//               ))),
//     );
//   }
// }

class CardBanner extends StatelessWidget {
  final String pathCardImage;

  const CardBanner(this.pathCardImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue.withAlpha(30),
      onTap: () {
        debugPrint('Card tapped.');
      },
      child: Container(
          width: 300,
          padding: EdgeInsets.only(bottom: 10),
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pathCardImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'banner1',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ],
          )),
    );
  }
}
