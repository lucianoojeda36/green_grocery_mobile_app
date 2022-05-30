import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.only(left: 20, right: 20, ),
      height: 70,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Image.asset(
                'assets/img/logo5.png',
                fit: BoxFit.fill,
              ),
            ),
            Flexible(
              flex: 1,
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 40.0,
              ),
            ),
          ]),
    );
  }
}
