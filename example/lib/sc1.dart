import 'dart:io';
import 'package:flutter/material.dart';
import 'package:openvpn_flutter_example/main.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                'PREKSHA ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              child: Text(
                'To report a drug crime anonymously online, all you need is to submit a form. Our application promises and ensures absolute anonymity. This app also provides intelligence and information to local, state law enforcement agencies relating to illegal drug activity.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 250,
              child: Image(
                image: AssetImage("images/he.png"),
              ),
            ),
            SizedBox(
              height: 105,
            ),
            GestureDetector(
              onTap: () async {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => First()));
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 49, 85, 179),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                    child: Text(
                  'Lets Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 9,
              child: Text(
                'You Protect Our Community We Protect Your Identity',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
