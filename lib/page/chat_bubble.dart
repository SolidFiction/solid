import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid/page/chat.dart';

class ChatBubble extends StatefulWidget{
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});
  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {

  @override
  Widget build(BuildContext context) {

    return widget.chatMessage.message.contains("https://diamondexchange.ng/chat/uploads/")

        ?

    Container(
      padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.Receiver?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (widget.chatMessage.type == MessageType.Receiver ? Colors.white : Colors.grey.shade200 ),
          ),
          padding: EdgeInsets.all(16),
          // child: Text(widget.chatMessage.message,style: TextStyle(
          //   color: Colors.orange
          // ),),
          child: Image.network(widget.chatMessage.message,width: 200,height: 200,),
        ),
      ),
    )

        :

    GestureDetector(
      onTap: (){
        print(widget.chatMessage.message);
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Align(
          alignment: (widget.chatMessage.type == MessageType.Receiver?Alignment.topLeft:Alignment.topRight),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: widget.chatMessage.type == MessageType.Receiver ? BorderRadius.only(topRight: Radius.circular(30),bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)):BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              color: (widget.chatMessage.type == MessageType.Receiver ? Color.fromRGBO(219, 186, 163, 1) : Color.fromRGBO(203, 208, 185, 1) ),
            ),
            padding: EdgeInsets.all(16),
            child: Text(widget.chatMessage.message),
          ),
        ),
      ),
    );
  }
}