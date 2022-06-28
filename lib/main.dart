import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/register.dart';
import 'package:untitled/sign_in.dart';
import 'package:untitled/start.dart';

void main() {
  runApp(MaterialApp(home: getStart(),
    debugShowCheckedModeBanner: false,
  ));
}

class getStart extends StatefulWidget {
  @override
  State<getStart> createState() => _getStart();
}

class _getStart extends State<getStart> {
  PageController controller =
  PageController(viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c) {
                        return sign_in();
                      }));
                    },
                    color: Colors.orange.shade50,
                    minWidth: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text('Skip')),
              ],
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '7',
                  style: TextStyle(
                      color: Colors.deepOrange.shade200,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Krave',
                  style: TextStyle(
                      color: Colors.teal.shade400,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: MediaQuery.of(context).size.height * .6,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                allowImplicitScrolling: true,
                controller: controller,
                children: [
                  buildFirstScreen(),
                  start(),
                ],
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  print(index);
                },
              ),
            ),
            SmoothPageIndicator(
                controller: controller,
                count: 2,
                effect:  ExpandingDotsEffect(
                  activeDotColor: Colors.orange,
                  radius: 5,
                  spacing: 5,
                  dotHeight: 5,
                  dotWidth: 5,
                )),
            SizedBox(height: 16,),
            FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (c){
                    return sign_in();
                  }));
                },
                color: Colors.teal.shade400,
                minWidth: 300,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.grey.shade50),
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c){
                        return register();
                      }));
                    },
                    minWidth: 2,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.teal),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  buildFirstScreen() {
    return Column(
      children: [
        Image.asset(
          'assets/start1.png',
          width: MediaQuery.of(context).size.width  * .8,
          height: MediaQuery.of(context).size.height * .4,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 10,
        ),
        Text('Get food delivery to your ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w700)),
        Text('doorstep asap',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w700)),
        SizedBox(
          height: 8,
        ),
        Text('We have young and professional delivery',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        Text('team that will bring your food as soon as ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        Text('possible to your doorstep ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
