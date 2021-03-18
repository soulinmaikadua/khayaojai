import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_shake/widget/custom_list_widget.dart';
import 'package:shake/shake.dart';

class ShakeScreen extends StatefulWidget {
  @override
  _ShakeScreenState createState() => _ShakeScreenState();
}

class _ShakeScreenState extends State<ShakeScreen> {
  String _random;
  bool isShake = false;
  var arr = [
    {"id": 1, "image": "assets/profile.jpg", "name": "ສຸລີນ"},
    {"id": 2, "image": "assets/profile.jpg", "name": "ສຸກ"},
    {"id": 2, "image": "assets/profile.jpg", "name": "ສຸວັນ"},
    {"id": 4, "image": "assets/profile.jpg", "name": "ກຳເງີນ"}
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      // Do stuff on phone shake
      var random = new Random();
      int randomNumber = random.nextInt(4);
      setState(() {
        _random = randomNumber.toString();
        isShake = true;
      });
      print(randomNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDC377C),
        centerTitle: true,
        elevation: 0,
        title: Text("Kha Yao Jai"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.phonelink_ring_rounded,
            size: 40,
            color: isShake == true ? Colors.red : Colors.blue,
          ),
          SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: _random != ""
                ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: arr.length,
                    itemBuilder: (context, index) {
                      print(_random);
                      print(arr);
                      return CustomListWidget(userData: arr[index]);
                    },
                  )
                : CustomListWidget(userData: arr[int.parse(_random)]),
          )
        ],
      ),
    );
  }
}
