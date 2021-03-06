import 'package:flutter/material.dart';

class MyChatWidget extends StatelessWidget {
  MyChatWidget({Key key, this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Text(message),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Colors.pink,
            child: Text("S"),
          ),
        ],
      ),
    );
  }
}
