// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:task1/signup.dart';

class login extends StatelessWidget {
  login({super.key});
  final List<Widget> Slider = [slider1(), slider2(), slider3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 520,
            child: CarouselSlider.builder(
                itemCount: 3,
                enableAutoSlider: true,
                autoSliderTransitionTime: const Duration(seconds: 1),
                unlimitedMode: true,
                slideIndicator: CircularSlideIndicator(
                    currentIndicatorColor: Colors.deepPurple),
                slideBuilder: (index) {
                  return Slider[index];
                }),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signup(),
                      ));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget slider1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/Illustration1.png',
        scale: 1.5,
      ),
      Center(
        child: Column(
          children: [
            Text(
              'Gain total control\n of your money',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Text(
                'Become your own money manager\n and make every cent count',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget slider2() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/Illustration2.png',
        scale: 1.5,
      ),
      Text(
        'Know where your \n of your money',
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 26),
        child: Text(
          'become your own money manager\n with category and financial report',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ],
  );
}

Widget slider3() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/Illustration3.png',
        scale: 1.5,
      ),
      Text(
        'Planning ahead',
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 26),
        child: Text(
          'Setup your budget for each category\n so you in control',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ],
  );
}
