import 'package:flutter/material.dart';
import 'package:untitled/sign_in.dart';


class start extends StatefulWidget {
  @override
  State<start> createState() => _start();
}

class _start extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/sammy.png',
              width: MediaQuery.of(context).size.width  * .8,
              height: MediaQuery.of(context).size.height * .4,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Buy Any Food from your ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700)),
            Text('favourite restaurant',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 8,
            ),
            Text('We are constantly adding your favourite',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300)),
            Text('restaurant throughout the territory and around ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300)),
            Text('your area carefully selected ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300)),
            SizedBox(
              height: 15,
            ),

          ],
        ),
      ),
    );
  }
}
