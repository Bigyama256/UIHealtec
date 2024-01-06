import 'package:flutter/material.dart';

import 'mainpage.dart';

class HealtecOnboardingView extends StatelessWidget {
  const HealtecOnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(
                    "HealTec",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0.04,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  child: Image.asset("assets/1.png"),
                  alignment: Alignment.center,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(
                        'More Comfortable Chat With the Doctor',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'Book an appointment with doctor. Chat with doctor via appointment letter and get consultationt.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF878787),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 24,
                      height: 8,
                      decoration: ShapeDecoration(
                        color: Color(0xFF4C4DDC),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MainPageView();
                            },
                          ),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(double.infinity, 35),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
