import 'package:flutter/material.dart';
import 'package:flutter_khayaojai/widget/my_chat_widget.dart';
import 'package:flutter_khayaojai/widget/type_and_send_widget.dart';
import 'package:flutter_khayaojai/widget/your_chat_widget.dart';

class ChatScreen extends StatefulWidget {
  final String userName;
  final String profileImage;
  ChatScreen({
    Key key,
    @required this.userName,
    @required this.profileImage,
  }) : super(key: key);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.userName,
          style: TextStyle(
            fontFamily: "NotoSan",
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    MyChatWidget(
                      message: "Print('Hello to the World of Code')",
                    ),
                    YourChatWidget(
                      image: widget.profileImage,
                      message: "OK, I will do it and learn it from you",
                    ),
                    MyChatWidget(
                      message: "Right, We will teach you",
                    ),
                    YourChatWidget(
                      image: widget.profileImage,
                      message: "Thanks",
                    ),
                    MyChatWidget(
                      message:
                          "Are you have happy with what we teach today? We'll see you soon...",
                    ),
                    YourChatWidget(
                      image: widget.profileImage,
                      message: "Yes, I'm very happy...",
                    ),
                    MyChatWidget(
                      message: "We also happy...",
                    ),
                  ],
                ),
              ),
              TypeAndSendWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
