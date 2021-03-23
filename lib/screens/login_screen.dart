import 'package:flutter/material.dart';

import 'shake_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/jerry.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(70.0),
              ),
              child: Image(image: AssetImage("assets/icons/heartbeat.png")),
            ),
            SizedBox(height: 160),
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
