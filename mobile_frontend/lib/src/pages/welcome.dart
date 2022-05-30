import 'package:flutter/material.dart';
import 'package:green_grocery/src/utils/clip_path.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Flexible(
                flex: 6,
                child: ClipPath(
                  clipper: ClipPathClass(),
                  child: SizedBox(
                    height: 500,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[600],
                        image: DecorationImage(
                            image: AssetImage('assets/img/splashscreen3.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Image(
                        height: 120,
                        image: AssetImage('assets/img/logo5.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40, bottom: 40),
                      child: Text(
                        'to the door of your house',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: MaterialButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 15, bottom: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Bienvenid@s',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        color: Colors.teal[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
