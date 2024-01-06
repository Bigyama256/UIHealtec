import 'package:flutter/material.dart';

import 'calling_screen.dart';

class PersonPageView extends StatelessWidget {
  const PersonPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'My Appointment',
                      style: TextStyle(
                        color: Color(0xFF0F0F0F),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Image.asset(
                    'assets/5.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xFF4C4DDC),
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 65,
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dr. Elia Ana',
                        style: TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Text(
                            '5.0 (332 reviews)',
                            style: TextStyle(
                              color: Color(0xFF0F0F0F),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cardiologists | Mars Hospital',
                    style: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appointmentCard(Icons.person, '658 +', 'Patients'),
                appointmentCard(Icons.messenger, '11 +', 'Years Expert'),
                appointmentCard(Icons.star, '5.0 +', 'Rating'),
                appointmentCard(Icons.message, '300 +', 'Reviews'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'About Me',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF0F0F0F),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Dr. Carly Angel is the top most immunologists specialist in Crist Hospital in London, UK. She achived several awards for her wonderful contribution ',
                    style: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'Read More. . . ',
                    style: TextStyle(
                      color: Color(0xFF4C4DDC),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Patient Information ',
              style: TextStyle(
                color: Color(0xFF0F0F0F),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Full Name : Richard Lee',
              style: TextStyle(
                color: Color(0xFF878787),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Gendre : Male',
              style: TextStyle(
                color: Color(0xFF878787),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xFF4C4DDC),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                fixedSize: MaterialStateProperty.all(
                  Size.fromHeight(50),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CallingScreen();
                    },
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Start Voice Call (14.30 - 15.00 PM)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column appointmentCard(IconData icon, String value, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Color(0xFFF5F5FF),
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              icon,
              size: 22,
              color: Color(0xFF4C4DDC),
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          value,
          style: TextStyle(
            color: Color(0xFF0F0F0F),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF878787),
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
