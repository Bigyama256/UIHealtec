import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int selectedSymptom = 0;
  List doctors = [
    {
      'name': 'Dr. Friska',
      'hospital': 'Utrionists - Hospital',
      'rating': 4.5,
      'image': 'assets/3.png',
    },
    {
      'name': 'Dr. Lidya Bey',
      'hospital': 'Utrionists - Hospital',
      'rating': 4.5,
      'image': 'assets/3.1.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/2.png"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, Welcome 🎉',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Leonardo thapinci',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 25,
                      // color: Colors.black,
                      child: Stack(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 3, top: 1),
                              width: 8,
                              height: 8,
                              decoration: ShapeDecoration(
                                color: Color(0xFFD93939),
                                shape: OvalBorder(),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.sort,
                    color: Colors.white,
                  ),
                  hintText: "Search Doctor...",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your symptoms ❓',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      symptomsCard(
                        "🤧Snuffle",
                        0,
                        selectedSymptom,
                        ontap: (index) {
                          selectedSymptom = index;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      symptomsCard(
                        "🤒 High Fever",
                        1,
                        selectedSymptom,
                        ontap: (index) {
                          selectedSymptom = index;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      symptomsCard(
                        "🤮 Nauseous",
                        2,
                        selectedSymptom,
                        ontap: (index) {
                          selectedSymptom = index;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favourite Doctor',
                        style: TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xFF4C4DDC),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: doctors.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x0A222222),
                              blurRadius: 16,
                              offset: Offset(0, 6),
                              spreadRadius: 0,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  doctors[index]['image'],
                                  height: 80,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        doctors[index]['name'],
                                        style: TextStyle(
                                          color: Color(0xFF0F0F0F),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            doctors[index]['rating'].toString(),
                                            style: TextStyle(
                                              color: Color(0xFF0F0F0F),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    doctors[index]['hospital'],
                                    style: TextStyle(
                                      color: Color(0xFF0F0F0F),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Color(0xFF4C4DDC),
                                  size: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Doctor',
                        style: TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xFF4C4DDC),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0A222222),
                          blurRadius: 15,
                          offset: Offset(0, 6),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset(
                              "assets/4.png",
                              width: 100,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Dr. Berlin Elizerd',
                                    style: TextStyle(
                                      color: Color(0xFF0F0F0F),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xFF4C4DDC),
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              Text(
                                'Cardiologists | Mars Hospital',
                                style: TextStyle(
                                  color: Color(0xFF878787),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '4.7 (7.932 reviews)',
                                    style: TextStyle(
                                      color: Color(0xFF0F0F0F),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget symptomsCard(String symptomsTitle, int index, int selectedIndex,
      {Function(int)? ontap}) {
    return InkWell(
      onTap: () {
        ontap?.call(index);
      },
      child: Container(
        alignment: Alignment.center,
        // clipBehavior: Clip.hardEdge,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: ShapeDecoration(
          color: index == selectedIndex ? Color(0xFF4C4DDC) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          symptomsTitle,
          style: TextStyle(
            color: index == selectedIndex ? Colors.white : Colors.black,
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
