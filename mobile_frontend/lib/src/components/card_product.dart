import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final repositoryList;
  const CardProduct(this.repositoryList, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final _byteImage = Base64Decoder().convert(repositoryList[0]["image"][0]);

    double width = MediaQuery.of(context).size.width;

    return Card(
      child: Container(
        height: 290,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image(
                    image: MemoryImage(_byteImage),
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  'Fruta1',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '23,5',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      child: FloatingActionButton(
                        backgroundColor: Colors.teal[600],
                        child: Icon(
                          Icons.add,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
