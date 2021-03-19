import 'package:flutter/material.dart';

import 'shake_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/background.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/icons/heartbeat.png"),
            ),
            // Icon(
            //   Icons.favorite_outlined,
            //   color: Colors.pink,
            //   size: 70,
            // ),
            SizedBox(height: 100),
            Center(
              child: Text("Hello World"),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShakeScreen(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(30),
                height: 56,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/logo.png",
                      scale: 1.4,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 30),
                    Text(
                      "ເຂົ້າລະບົບດ້ວຍ Google",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "NotoSan",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
