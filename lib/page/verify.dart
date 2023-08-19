import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solid/page/newpass.dart';
import 'package:solid/page/reset.dart';

class Verify extends StatefulWidget{
  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  TextEditingController pin1 = new TextEditingController();
  TextEditingController pin2 = new TextEditingController();
  TextEditingController pin3 = new TextEditingController();
  TextEditingController pin4 = new TextEditingController();
  String lilo = "g";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset("assets/phone.png"),
                  margin: EdgeInsets.only(top: 50),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Verify",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),),
                margin: EdgeInsets.only(top: 30),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Please enter the verification code \nsent to your phone number",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                  ),),
                margin: EdgeInsets.only(top: 20),
              )
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
                    child: Text("Your code"),
                  margin: EdgeInsets.only(top: 20,left: 20),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            SizedBox(
                                height: 68,
                                width: 64,
                                child: TextFormField(
                                  controller: pin1,
                                  onChanged: (value){
                                    if(value.length == 1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  // onSaved: (pin1){},

                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                )
                            ),
                            SizedBox(
                                height: 68,
                                width: 64,
                                child: TextFormField(
                                  controller: pin2,
                                  onChanged: (value){
                                    if(value.length == 1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  // onSaved: (pin2){},
                                  // decoration: InputDecoration(hintText: "0"),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                )
                            ),
                            SizedBox(
                                height: 68,
                                width: 64,
                                child: TextFormField(
                                  controller: pin3,
                                  onChanged: (value){
                                    if(value.length == 1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  // onSaved: (pin1){},
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                )
                            ),
                            SizedBox(
                                height: 68,
                                width: 64,
                                child: TextFormField(
                                  controller: pin4,
                                  onChanged: (value){
                                    if(value.length == 1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  // onSaved: (pin1){},
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                )
                            ),
                          ]
                      )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10),
                      child: Text("Resend your code",
                        style: TextStyle(
                            color: Color.fromRGBO(219, 186, 163, 1)
                        ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,right: 20),
                      child: Text("Expired after 23s",
                      style: TextStyle(
                        color: Colors.grey
                      ),),
                    )
                  ],
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
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Newpass();
                          }));
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