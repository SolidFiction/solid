import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solid/page/agentchat.dart';
import 'package:solid/page/agentdashboard.dart';
import 'package:solid/page/chat.dart';
import 'package:solid/page/usernewnotify.dart';

class ContactBubble extends StatefulWidget{
  Contact contact;
  ContactBubble({required this.contact});
  @override
  State<ContactBubble> createState() => _ContactBubbleState();
}

class _ContactBubbleState extends State<ContactBubble> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 712));
    return Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10).r,
        margin: EdgeInsets.only(left: 10,right: 10,bottom: 20).r,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10).w
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Container(
              child: Image.asset("assets/fiction.png"),
            ),

            Container(width: 7.w,),

            Expanded(
              child: Container(
                // width: 150.w,
                child: Text(widget.contact.email,style: TextStyle(
                  fontSize: 14.sp
                ),)
              ),
            ),

            Container(width: 5.w,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AgentChat(email: widget.contact.email, agentmail: widget.contact.agentmail);
                }));
              },
              child: Container(
                child: Icon(Icons.chat_bubble_outline_rounded),
              ),
            ),

            SizedBox(width: 5.w,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return UserNewNotify(username: widget.contact.name, useremail: widget.contact.email,
                    agentemail: widget.contact.agentmail,);
                }));
              },
              child: Container(
                child: Icon(Icons.notifications),
              ),
            ),

          ],
        ),
      );
  }
}