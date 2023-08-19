import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solid/page/branding.dart';
import 'package:solid/page/chat.dart';
import 'package:solid/page/digital.dart';
import 'package:solid/page/graphics.dart';
import 'package:solid/page/home.dart';
import 'package:solid/page/signin.dart';
import 'package:solid/page/stripe.dart';
import 'package:solid/page/usernoti.dart';
import 'package:solid/page/web.dart';

class Dashboard extends StatefulWidget{
  String name = "";
  String email = "";
  Dashboard({required this.name,required this.email});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late SharedPreferences prefs;

  String? hi;
  String? user;


  void loadCounter() async {
    // Obtain shared preferences
    prefs = await SharedPreferences.getInstance();

    saveUsername();
    // load counter
    setState(() {
      hi = prefs.getString('lilo');
      user = prefs.getString('user');
    });
  }

  void saveUsername() async {
    await prefs.setString('user', widget.name);
    await prefs.setString('email', widget.email);
    print("saved username");
  }

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  void saveCounter() async {
    await prefs.setString('lilo', 'log out');
    print("log out shared");
  }

  String num = '2';
  int showmodal = 0;

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
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                  GestureDetector(
                    onTap: (){
                      showModal2();
                    },
                    child: Container(
                      child: Text("Settings",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),),
                      margin: EdgeInsets.only(left: 25,top: 20),
                    ),
                  ),
                  Container(
                    child: Divider(height: 20,thickness: 2,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  ),
                  Container(
                    child: Text("Payments",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),),
                    margin: EdgeInsets.only(left: 25,top: 20),
                  ),
                  Container(
                    child: Divider(height: 20,thickness: 2,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  ),
                  Container(
                    child: Text("Reminders",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),),
                    margin: EdgeInsets.only(left: 25,top: 20),
                  ),
                  Container(
                    child: Divider(height: 20,thickness: 2,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      child: Text("Saved messages",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),),
                      margin: EdgeInsets.only(left: 25,top: 20),
                    ),
                  ),
                  Container(
                    child: Divider(height: 20,thickness: 2,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  void showModal2(){
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
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Icon(Icons.keyboard_backspace),
                            padding: EdgeInsets.fromLTRB(5, 5, 7, 5),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        Container(
                          child: Text("Settings",style: TextStyle(
                            fontSize: 18
                          ),),
                        ),
                        Container(
                          width: 50,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      showModal3();
                    },
                    child: Container(
                      child: Text("Edit Profile",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),),
                      margin: EdgeInsets.only(left: 25,top: 20),
                    ),
                  ),
                  Container(
                    child: Divider(height: 20,thickness: 2,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  ),
                  GestureDetector(
                    onTap: (){
                      saveCounter();
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                        return Signin();
                      }), (r){
                        return false;
                      });
                    },
                    child: Container(
                      child: Text("Sign Out",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),),
                      margin: EdgeInsets.only(left: 25,top: 20),
                    ),
                  ),
                  Container(
                    child: Divider(height: 20,thickness: 2,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  void showModal3(){
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
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Icon(Icons.keyboard_backspace),
                            padding: EdgeInsets.fromLTRB(5, 5, 7, 5),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        Container(
                          child: Text("Edit Profile",style: TextStyle(
                              fontSize: 18
                          ),),
                        ),
                        Container(
                          width: 50,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color.fromRGBO(182, 208, 226, .7)),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                padding: EdgeInsets.only(left: 120),
                                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(widget.name,style: TextStyle(
                                        fontWeight: FontWeight.w500
                                      ),),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                              child: Icon(Icons.trip_origin_rounded,color: Colors.orange,size: 15,)
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            child: Text("Male"),
                                          )
                                        ],
                                      )
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Icon(Icons.location_pin,color: Colors.purpleAccent,size: 15,)
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            child: Text("Lagos, Nigeria"),
                                          )
                                        ],
                                      )
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50),bottomLeft: Radius.circular(40),),
                              image: DecorationImage(
                                  image: AssetImage("assets/fiction.png"),
                                  fit: BoxFit.contain
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text("Change Password",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),),
                    margin: EdgeInsets.only(left: 25,top: 20),
                  ),
                  Container(
                    child: Divider(height: 20,thickness: 2,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  ),
                  Container(
                    child: Text("Delete Account",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),),
                    margin: EdgeInsets.only(left: 25,top: 20),
                  ),
                  Container(
                    child: Divider(height: 20,thickness: 2,),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  int _selectedItemIndex =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(_selectedItemIndex == 0)...[SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 107, 50, 1),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40))
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text("Hi "+widget.name,style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  showModal();
                                },
                                child: Container(
                                  // margin: EdgeInsets.only(right: 20),
                                  padding: EdgeInsets.only(top: 20,bottom: 30),
                                  child: Image.asset("assets/Hamburger.png"),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Image.asset("assets/sVector.png"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20,bottom: 20),
                          child: Image.asset("assets/Vector.png"),
                        ),
                        Container(
                          transform: Matrix4.translationValues(-18.0, 0.0, 0.0),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text("Sign off on today’s instagram post",style: TextStyle(
                              color: Colors.white
                          ),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          margin: EdgeInsets.only(bottom: 30,right: 20),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                },
                                child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("Respond",style: TextStyle(
                                      color: Color.fromRGBO(255, 107, 50, 1)
                                  ),),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 5,top: 5,bottom: 5),
                                margin: EdgeInsets.only(left: 10),
                                child: Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color.fromRGBO(255, 107, 50, 1),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),]
          else if(_selectedItemIndex == 1)...[SafeArea(
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
                        _selectedItemIndex = 0;
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
                    child: Text("Resources",style: TextStyle(
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
          ),]
          else if(_selectedItemIndex == 3)...[SafeArea(
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
                            _selectedItemIndex = 0;
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
            ),],
          if(_selectedItemIndex == 0)...[Container(
            margin: EdgeInsets.only(top: 20,left: 20,bottom: 20),
            child: Text("Use Izzy for...",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),),
          ),],
          if(_selectedItemIndex == 0)...[Flexible(
            child: Container(
              child: ListView(
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Brand()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(219,186,163, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Image.asset("assets/Rectangle16.png"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Text("Branding",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text("and Strategy",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Graphics()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(219,186,163, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Image.asset("assets/Rectangle17.png"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Text("Graphics and",style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text("Content",style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Web()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(203,208,185,1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Image.asset("assets/Rectangle18.png"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Text("Web/app",style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text("development",style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Digital()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(203,208,185,1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Image.asset("assets/Rectangle19.png"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Text("Digital",style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text("marketing",style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(255, 107, 50, 1),
                            Color.fromRGBO(219, 186, 163, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 35,bottom: 10),
                          child: Image.asset("assets/Vector22.png"),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text("Built for",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                ),),
                              ),
                              Container(
                                child: Text("Female",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                              Container(
                                child: Text("Entrepreneurs",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)
                                ),
                                child: Text("Get Started",style: TextStyle(
                                    color: Color.fromRGBO(255, 107, 50, 1),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("payment");
                      // Navigator.push(context, MaterialPageRoute(builder: (context){
                      //   return Payment();
                      // }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Color.fromRGBO(255, 107, 50, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 40),
                                child: Image.asset("assets/Vectortalk.png"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text("Talk to Izzy",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                                margin: EdgeInsets.only(top: 10,bottom: 50),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),]
          else if(_selectedItemIndex == 1)...[Flexible(
              child: Container(
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(219,186,163, 1),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset("assets/Group 14.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("How to build a website in 2022",style: TextStyle(
                                    fontWeight: FontWeight.w500
                                  ),),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text("7 mins ago",style: TextStyle(
                                    color: Colors.grey
                                  ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(219,186,163, 1),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset("assets/Group 15.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("How to build a website in 2022",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                  ),),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text("14 mins ago",style: TextStyle(
                                      color: Colors.grey
                                  ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )]
          else if(_selectedItemIndex == 3)...[Flexible(
              child: Container(
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserNoti()));
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                        child: Card(
                          elevation: 20,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            // margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20))
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset("assets/fiction.png"),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text("Sign off on today's post",style: TextStyle(
                                              fontWeight: FontWeight.w500
                                          ),),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          child: Text("Caption: Happy valentine, we hope you have plans for love. I love you and I will do it forever, my love, because with you everything is more beautiful and you make me want to live dreaming",style: TextStyle(
                                              color: Colors.grey,
                                            fontSize: 13,
                                          ),maxLines: 2, overflow: TextOverflow.ellipsis),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: CircleAvatar(
                                    maxRadius: 15,
                                    child: Text(num,style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                      child: Card(
                        elevation: 20,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          // margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20))
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset("assets/fiction.png"),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text("Payment Confirmed",style: TextStyle(
                                            fontWeight: FontWeight.w500
                                        ),),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Text("Caption: Happy valentine, we hope you have plans for love. I love you and I will do it forever, my love, because with you everything is more beautiful and you make me want to live dreaming",style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),maxLines: 2, overflow: TextOverflow.ellipsis),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: CircleAvatar(
                                  maxRadius: 15,
                                    backgroundColor: Colors.black26,
                                    child: Icon(Icons.check,color: Colors.white,size: 20,)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                      child: Card(
                        elevation: 20,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          // margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20))
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset("assets/fiction.png"),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text("Website login Credentials",style: TextStyle(
                                            fontWeight: FontWeight.w500
                                        ),),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Text("Caption: Happy valentine, we hope you have plans for love. I love you and I will do it forever, my love, because with you everything is more beautiful and you make me want to live dreaming",style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),maxLines: 2, overflow: TextOverflow.ellipsis),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: CircleAvatar(
                                    maxRadius: 15,
                                    backgroundColor: Colors.black26,
                                    child: Icon(Icons.check,color: Colors.white,size: 20,)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )],

          //bottom navigation bar
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap:(){
                    setState(() {
                      _selectedItemIndex = 0;
                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: _selectedItemIndex == 0 ?Image.asset("assets/home.png",width: 40,height: 40,):Image.asset("assets/thome.png",width: 40,height: 40,),
                        ),
                        Container(
                          child: Text("Home",style: TextStyle(
                            fontSize: 10,
                            color: _selectedItemIndex ==0 ? Colors.black : Color.fromRGBO(184,184,210,1)
                          ),),
                        ),
                      ],
                    ),
                    decoration: _selectedItemIndex == 0 ? BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0,color: Colors.black)
                      )
                    ):BoxDecoration(),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedItemIndex = 1;
                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: _selectedItemIndex == 1 ? Image.asset("assets/tbooking.png",width: 40,height: 40,):Image.asset("assets/booking.png",width: 40,height: 40,),
                        ),
                        Container(
                          child: Text("Resources",style: TextStyle(
                              fontSize: 10,
                              color: _selectedItemIndex ==1 ? Colors.black : Color.fromRGBO(184,184,210,1)
                          ),),
                        ),
                      ],
                    ),
                    decoration: _selectedItemIndex == 1 ? BoxDecoration(
                        border: Border(
                            top: BorderSide(width: 1.0,color: Colors.black)
                        )
                    ) : BoxDecoration(

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat(email: widget.email,)));
                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/Chat.png",width: 40,height: 40,),
                        ),
                        Container(
                          child: Text("Chat",style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(184,184,210,1)
                          ),),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedItemIndex = 3;
                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: _selectedItemIndex == 3 ? Image.asset("assets/tnoti_1.png",width: 40,height: 40,) :Image.asset("assets/noti_1.png",width: 40,height: 40,),
                        ),
                        Container(
                          child: Text("Notifications",style: TextStyle(
                              fontSize: 10,
                              color: _selectedItemIndex ==3 ? Colors.black : Color.fromRGBO(184,184,210,1)
                          ),),
                        ),
                      ],
                    ),
                    decoration: _selectedItemIndex == 3 ? BoxDecoration(
                        border: Border(
                            top: BorderSide(width: 1.0,color: Colors.black)
                        )
                    ) : BoxDecoration(

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}