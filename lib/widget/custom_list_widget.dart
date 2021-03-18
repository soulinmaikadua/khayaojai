import 'package:flutter/material.dart';

class CustomListWidget extends StatelessWidget {
  CustomListWidget({Key key, @required this.userData}) : super(key: key);
  final Map userData;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          // radius: 50,
          backgroundImage: AssetImage(userData['image']),
        ),
        title: Text(userData['name']),
      ),
    );
  }
}
