import 'package:flutter/material.dart';

//when user clicks on a notification
class UserNoti extends StatefulWidget {

  @override
  _UserNotiState createState() => _UserNotiState();
}

class _UserNotiState extends State<UserNoti> {

  int reply = 0;
  int chnge = 0;
  bool send = false;

  TextEditingController msg = new TextEditingController();

  void showModal(){
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        builder: (context){
          return Container(
            //height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              // color: Colors.blue,
              // borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
            ),
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("assets/Rectangle26.png"),
                          margin: EdgeInsets.only(top: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Icon(Icons.check_circle_outline_rounded,size: 150,color: Color.fromRGBO(255, 107, 50, 1),),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SafeArea(
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 107, 50, 1),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40))
                  ),
                  padding: EdgeInsets.only(top: 30,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Icon(Icons.keyboard_backspace,color: Colors.white,size: 20,),
                        ),
                      ),
                      Container(
                        child: Text("Notifications",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                      Container(
                        child: Image.asset("assets/Hamburger.png"),
                      )
                    ],
                  )
              ),
            ),
            Container(
              width: MediaQuery. of(context). size. width -100,
              margin: EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: Text("Sign off on today's instagram post",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,bottom: 15),
              child: Text("1/1/2021",style: TextStyle(
                color: Colors.grey
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("Caption: Always serve food warm"),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("Hashtags: #foodie #healthyliving"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(174, 232, 252, 1),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("assets/fruitbasket.png"),
                  )
                ],
              ),
            ),
            if(reply == 0)...[Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      showModal();
                    },
                    child: Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 107, 50, 1),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                            child: Text("Approve",style: TextStyle(
                              color: Colors.white
                            ),)
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        reply = 1;
                      });
                    },
                    child: Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 107, 50, 1),
                              borderRadius: BorderRadius.circular(5)
                          ),
                            padding: EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                            child: Text("Reply",style: TextStyle(
                              color: Colors.white
                            ),)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),]
            else if(reply == 1)...[ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Divider(thickness: 2,color: Colors.black,),
                ),
              ],
            )],
            if(reply == 1)...[Row(
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.add),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: msg,
                    onChanged: (text) {
                      // print('First text field: $text');
                      if(text.isEmpty){
                        setState(() {
                          chnge = 0;
                        });
                      }else if(text.isNotEmpty){
                        setState(() {
                          chnge = 1;
                        });
                      }
                    },
                    // keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.orangeAccent),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.orangeAccent),
                        // borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintText: "Type message...",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
                chnge == 0 ? GestureDetector(
                  onTap: (){
                    setState(() {

                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: Icon(Icons.mic_rounded),
                  ),
                ) : Container(),
                chnge == 0 ? GestureDetector(
                  onTap: (){
                    setState(() {

                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: Icon(Icons.camera_alt_outlined),
                  ),
                ) : Container(),
                chnge == 1 ? GestureDetector(
                  onTap: (){
                    setState(() {

                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: send ?CircularProgressIndicator(color: Colors.black,) :Icon(Icons.send),
                  ),
                ) : Container(),
              ],
            )],
          ],
        ),
      ),
    );
  }
}
