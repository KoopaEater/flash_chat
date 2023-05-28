import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String? text;
  final String? sender;
  final bool? isMe;

  MessageBubble({this.text, this.sender, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: (isMe ?? false) ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender ?? '?',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12.0,
            ),
          ),
          Material(
            elevation: 5.0,
            color: (isMe ?? false) ? Colors.lightBlueAccent : Colors.grey[200],
            borderRadius: BorderRadius.only(
              topLeft: (isMe ?? false) ? Radius.circular(30.0) : Radius.circular(5.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
              topRight: (isMe ?? false) ? Radius.circular(5.0) : Radius.circular(30.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                text ?? ' ',
                style: TextStyle(
                  color: (isMe ?? false) ? Colors.white : Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
