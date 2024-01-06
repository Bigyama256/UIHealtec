import 'package:flutter/material.dart';
import 'package:project/calender_page.dart';
import 'package:project/homepage.dart';
import 'package:project/note_page.dart';
import 'package:project/person_page.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  List pages= [
    HomePageView(),
    CalenderPageView(),
    NotePageView(),
    PersonPageView(),
  ];
  int selectedPageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            selectedPageIndex = index;
            setState(() {
              
            });
          },
          currentIndex: selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blueAccent,),
              label: "",
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color: Colors.blueAccent,),
              label: "",
    
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.note, color: Colors.blueAccent,),
              label: "",
    
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blueAccent,),
              label: "",
    
            ),
          ],
        ),
      ),
    );
  }
}
