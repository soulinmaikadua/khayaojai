import 'package:flutter/material.dart';

class TypeAndSendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Type a message...",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      SizedBox(width: 5),
      Expanded(
        flex: 0,
        child: Icon(
          Icons.send,
          size: 30,
          color: Colors.pink,
        ),
      ),
    ]);
  }
}
