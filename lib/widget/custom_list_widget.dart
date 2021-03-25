import 'package:flutter/material.dart';
import 'package:flutter_khayaojai/screens/chat_screen.dart';

class CustomListWidget extends StatelessWidget {
  CustomListWidget({Key key, @required this.userData}) : super(key: key);
  final Map userData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(
              userName: userData['name'],
              profileImage: userData['image'],
            ),
          ),
        );
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            // radius: 50,
            backgroundImage: AssetImage(userData['image']),
          ),
          title: Text(
            userData['name'],
            style: TextStyle(fontFamily: "NotoSan"),
          ),
        ),
      ),
    );
  }
}
