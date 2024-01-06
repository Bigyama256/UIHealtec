import 'package:flutter/material.dart';

class CallingScreen extends StatelessWidget {
  const CallingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/5.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(
                    "assets/5.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Dr. Carly Angel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 20,
                  width: 120,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: ShapeDecoration(
                          color: Color(0xFFD93939),
                          shape: OvalBorder(),
                        ),
                      ),
                      Text(
                        '19 : 00 Minute',
                        style: TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Audio recording is active...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.volume_up_sharp,
                            color: Colors.blue,
                            size: 22,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.call_end,
                            color: Colors.blue,
                            size: 22,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.mic,
                            color: Colors.blue,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
