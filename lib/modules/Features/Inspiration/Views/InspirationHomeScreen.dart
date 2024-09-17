import 'package:flutter/material.dart';

class InspirationHomeScreen extends StatefulWidget {
  const InspirationHomeScreen({super.key});

  @override
  State<InspirationHomeScreen> createState() => _InspirationHomeScreenState();
}

class _InspirationHomeScreenState extends State<InspirationHomeScreen> {
  String getImageName(int index) {
    switch (index) {
      case 0:
        return "one";
      case 1:
        return "two";
      default:
        return "four";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print("Pressed Menu");
          },
          icon: Icon(Icons.menu),
        ),
        backgroundColor: Color(0xff107BCF),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // padding: EdgeInsets.only(left: 20, top: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Find Your",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Inspiration",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: 'search you are looking for',
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32),
                    ),
                    borderSide: BorderSide(width: 0, color: Colors.pinkAccent),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Promo Today',
                    style: TextStyle(color: Colors.black87),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int i = 0; i <= 24; i++)
                          Container(
                            width: 150,
                            height: 200,
                            margin: EdgeInsets.only(right: 10),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.greenAccent,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'utils/images/${getImageName(i % 3)}.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              width: double.infinity,
              height: 220,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 0)),
              child: Image.asset(
                'utils/images/three.jpg',
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
