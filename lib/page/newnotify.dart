import 'package:flutter/material.dart';

//sending new notifications to users
class NewNotify extends StatefulWidget {

  @override
  _NewNotifyState createState() => _NewNotifyState();
}

class _NewNotifyState extends State<NewNotify> {
  int _selectedIndex = 0;
  bool check = false;
  bool attach = false;
  bool menu = false;
  bool pay = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      child: Text("New Notification",style: TextStyle(
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
          Flexible(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder:UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: "example@example.com",
                      labelText: "",
                      // prefixText: "To:",
                      prefixIcon: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top:16,right: 0,left: 10),
                              child: Text('To:',style: TextStyle(color: Colors.grey,fontSize: 17),),
                            )
                          ],),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder:UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: "example@example.com",
                      labelText: "",
                      // prefixText: "To:",
                      prefixIcon: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top:16,right: 0,left: 10),
                              child: Text('Tag:',style: TextStyle(color: Colors.grey,fontSize: 17),),
                            )
                          ],),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder:UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: "example@example.com",
                      labelText: "",
                      // prefixText: "To:",
                      prefixIcon: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top:16,right: 0,left: 10),
                              child: Text('Subject:',style: TextStyle(color: Colors.grey,fontSize: 17),),
                            )
                          ],),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            if(check == false){
                              check = true;
                            }else if(check == true){
                              check = false;
                            }
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: Container(
                            child: Image.asset("assets/check.png")
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            if(attach == false){
                              attach = true;
                            }else if(attach == true){
                              attach = false;
                            }
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: Container(
                            child: Image.asset("assets/attach.png")
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            if(menu == false){
                              menu = true;
                            }else if(menu == true){
                              menu = false;
                            }
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("assets/menu.png")
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("assets/camera.png")
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            if(pay == false){
                              pay = true;
                            }else if(pay == true){
                              pay = false;
                            }
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: Container(
                              child: Image.asset("assets/pay.png")
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _selectedIndex = 5;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset("assets/send.png")
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.orangeAccent),
                        borderRadius: BorderRadius.circular(0),
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

                if(attach == true)...[
                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    child: Text("Attachments",style: TextStyle(
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15,bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(211, 211, 211, 1)
                          ),
                          width: MediaQuery.of(context).size.width/4,
                          height: 90,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(211, 211, 211, 1)
                          ),
                          margin: EdgeInsets.only(left: 20,right: 20),
                          width: MediaQuery.of(context).size.width/4,
                          height: 90,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(211, 211, 211, 1)
                          ),
                          width: MediaQuery.of(context).size.width/4,
                          height: 90,
                        ),
                      ],
                    ),
                  )
                ],
                if(menu == true)...[
                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    child: Text("Package details",style: TextStyle(
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orangeAccent),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.only(left: 15,right: 15,top: 10),
                    padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text("landing page design"),
                        ),
                        Container(
                          child: Icon(Icons.check_circle_outline_rounded),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orangeAccent),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.only(left: 15,right: 15,top: 10),
                    padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text("e-commerce functionality"),
                        ),
                        Container(
                          child: Icon(Icons.check_circle_outline_rounded),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
                Container(
                  margin: EdgeInsets.only(bottom: 10,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if(pay == true)...[
                       Card(
                         elevation: 5,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(255, 107, 50, 1),),
                            color: Color.fromRGBO(255, 107, 50, 1),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          padding: EdgeInsets.only(left: 25,top: 15,bottom: 15,right: 25),
                          child: Text("Pay now",style: TextStyle(
                            color: Colors.white
                          ),),
                        ),)
                      ],
                      if(check == true)...[
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color.fromRGBO(255, 107, 50, 1),),
                                color: Color.fromRGBO(255, 107, 50, 1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.only(left: 25,top: 15,bottom: 15,right: 25),
                            child: Text("Reply",style: TextStyle(
                                color: Colors.white
                            ),),
                          ),)
                      ],
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
