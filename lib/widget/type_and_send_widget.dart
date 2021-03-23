import 'package:flutter/material.dart';

class TypeAndSendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: Row(children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(8),
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
          child: IconButton(
            onPressed: () {
              print("Hello World");
            },
            icon: Icon(
              Icons.send,
              size: 30,
              color: Colors.pink,
            ),
          ),
        ),
      ]),
    );
  }
}
