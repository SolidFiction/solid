import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid/page/dashboard.dart';

class Newpass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset("assets/Frame.png"),
                    )
                  ],
                )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Create new password",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),
                margin: EdgeInsets.only(top: 30),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Please set a new and strong password",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(255, 107, 50, 1)
                  ),),
                margin: EdgeInsets.only(top: 20),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 35),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                border: Border.all(
                  color: Colors.lightBlueAccent,
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("New password"),
                  margin: EdgeInsets.only(top: 20,left: 20),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 30,top: 10),
                  child: TextField (
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,),
                      ),
                      // labelText: 'Phone Number',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                      ),
                      prefixIcon: Image.asset("assets/key.png",),
                      suffixIcon: Container(child: Image.asset("assets/eyeon.png",)),
                    ),
                  ),
                ),
                Container(
                  child: Text("Retype password"),
                  margin: EdgeInsets.only(top: 20,left: 20),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 30,top: 10),
                  child: TextField (
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,),
                      ),
                      // labelText: 'Phone Number',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                      ),
                      prefixIcon: Image.asset("assets/key.png",),
                      suffixIcon: Container(child: Image.asset("assets/eyeoff.png",)),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          // setState(() {
                          //   lilo = pin1.text+" "+pin2.text+" "+pin3.text+" "+pin4.text;
                          //   print(lilo);
                          // });

                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 107, 50, 1),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          child: Text("Confirm",textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white
                            ),),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}