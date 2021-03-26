import 'package:flutter/material.dart';
import 'package:flutter_khayaojai/widget/custom_list_widget.dart';
import 'package:shake/shake.dart';

class ShakeScreen extends StatefulWidget {
  @override
  _ShakeScreenState createState() => _ShakeScreenState();
}

class _ShakeScreenState extends State<ShakeScreen> {
  bool isShake = false;
  var arr = [
    {"id": 1, "image": "assets/images/profile.jpg", "name": "ສຸລີນ"},
    {"id": 2, "image": "assets/images/souk.jpg", "name": "ສຸກ"},
    {"id": 2, "image": "assets/images/rose.jpg", "name": "Rose` BLACKPINK"},
    {"id": 4, "image": "assets/images/xao.jpg", "name": "Taylor Swift"}
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      setState(() {
        isShake = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Kha Yao Jai"),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            children: [
              isShake == true
                  ? Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            "assets/icons/heartbeat.png",
                          ),
                        ),
                        Text(
                          "ກຳລັງຄົ້ນຫາຄົນທີແມ່ນ...",
                          style: TextStyle(
                              fontFamily: "NotoSan", color: Colors.pink),
                        )
                      ],
                    )
                  : Icon(
                      Icons.speaker_phone,
                      size: 60,
                      color: Colors.grey,
                    ),
              SizedBox(height: 40),
              isShake == true
                  ? ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: arr.length,
                      itemBuilder: (context, index) {
                        print(arr);
                        return CustomListWidget(userData: arr[index]);
                      },
                    )
                  : Text(
                      "ສັ່ນໂທລະສັບເພື່ອຫາຄົນທີຖືກໃຈ",
                      style: TextStyle(fontFamily: "NotoSan"),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
