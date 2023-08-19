import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solid/page/chat.dart';
import 'package:solid/page/contact.dart';
import 'package:solid/page/createoffer.dart';
import 'package:solid/page/home.dart';
import 'package:solid/page/myoffer.dart';
import 'package:solid/page/newnotify.dart';
import 'package:solid/page/scout.dart';
import 'package:solid/page/signin.dart';
import 'package:http/http.dart' as http;

class Contact{
  String name = "";
  String email = "";
  String agentmail = "";
  Contact({required this.name, required this.email,required this.agentmail});
}
class AgentDashboard extends StatefulWidget{
  String name = "";
  String email = "";
  AgentDashboard({required this.name,required this.email});
  @override
  State<AgentDashboard> createState() => _AgentDashboardState();
}

class _AgentDashboardState extends State<AgentDashboard> {
  late SharedPreferences prefs;

  String? hi;
  String? user;
  List <Contact> contact = [];
  List? contactdata;
  int? contactlenght;
  bool showChat = false;

  Future showcontact() async {
    final response = await http
        .post(Uri.https('adeoropelumi.com', 'solid/contacts.php'), body: {
      "email": widget.email,
    });

    var responsBody = json.decode(response.body);
    contactdata = responsBody;

    // print(responsBody);
    contactlenght = contactdata?.length;
    print('after 7 seconds Chat Lenght:- $contactlenght');

    // if (chatdata?.length == secondaddChat) {
    //   print('No new chat');
    // } else {
    //
    //   print('New Chat Lenght:- $secondaddChat');
    //   //Chat Message after 7 seconds
    //   print('chat after 7 seconds is printed');
    //
    //   for(int? q = chatdata?.length; q! <secondaddChat!; q++){
    //     String users = responsBody[q]['1'].toString();
    //     contact.add(Contact(email: responsBody[q]['0'].toString()));
    //   }
    //
    //   //update new length of chatdata
    //   setState(() {
    //     chatdata = secondchatdata;
    //   });
    // }

    for(int? q = 0; q! <contactlenght!; q++){
      String name = responsBody[q]['0'].toString();
      String user = responsBody[q]['1'].toString();
      String agent = responsBody[q]['2'].toString();
      print(agent);
      contact.add(Contact(name: name, email: user,agentmail: agent));
    }

    setState(() {
      showChat = true;
    });

  }

  void loadCounter() async {
    // Obtain shared preferences
    prefs = await SharedPreferences.getInstance();

    saveUsername();
    // load counter
    setState(() {
      hi = prefs.getString('lilo');
      user = prefs.getString('user');
    });

    showcontact();
  }

  void saveUsername() async {
    await prefs.setString('user', widget.name);
    await prefs.setString('email', widget.email);
    print("saved agent username");
  }

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  void saveCounter() async {
    await prefs.setString('lilo', 'log out');
    print("log out agent");
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
                                  image: AssetImage("assets/profile pic.jpeg"),
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
  int todo = 1;
  TextEditingController _search = new TextEditingController();
  List<TextEditingController> _controllers = [];


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 712));
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          if(_selectedItemIndex == 0)...[
            SafeArea(
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
                          child: Text("Tolu: I want to design a logo",style: TextStyle(
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
          ),
          ]
          else if(_selectedItemIndex == 1)...[
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
                      child: Text("Contacts",style: TextStyle(
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
          ]
          else if(_selectedItemIndex == 3)...[
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
            ),
            ],

          if(_selectedItemIndex == 0)...[]
          else if(_selectedItemIndex == 1)...[
            Container(
            child: Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              child: TextField(
                controller: _search,
                onChanged: (text) {

                },
                // keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.black26),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Colors.black26),
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
          )
          ],

          if(_selectedItemIndex == 0)...[
            Flexible(
            child: Container(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text("MY TO DO LIST",style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              todo++;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orangeAccent),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                            margin: EdgeInsets.only(right: 20,top: 10),
                            child: Row(
                              children: [
                                Container(
                                  child: Text("new"),
                                ),
                                Container(
                                  child: Icon(Icons.add),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: CustomScrollView(
                          slivers: [
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                    (BuildContext context, int index) {
                                  _controllers.add(new TextEditingController());
                                  return Container(
                                      margin: EdgeInsets.only(bottom: 10,left: 20,right: 20),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: TextField(
                                                controller: _controllers[index],
                                                onChanged: (text) {

                                                },
                                                // keyboardType: TextInputType.multiline,
                                                maxLines: null,
                                                decoration: InputDecoration(
                                                  contentPadding: EdgeInsets.only(top: 2,left: 5),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(width: 1, color: Colors.orangeAccent),
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide:
                                                    BorderSide(width: 1, color: Colors.orangeAccent),
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  hintText: "Type message...",
                                                  hintStyle: TextStyle(
                                                    color: Colors.grey.shade500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                todo--;
                                              });
                                            },
                                            child: Container(
                                              child: Icon(Icons.remove_circle_outline,color: Colors.redAccent,),
                                              margin: EdgeInsets.only(left: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                  );
                                },
                                childCount: todo,
                              ),
                            ),
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                    (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.only(top: 40,bottom: 60,left: 20,right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                              return Scout();
                                            }));
                                          },
                                          child: Container(

                                            height: 140,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color.fromRGBO(255, 107, 50, .2),
                                                    Color.fromRGBO(255, 107, 50, 1),
                                                  ],
                                                )
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Image.asset("assets/scou.png",height: 40,width: 40,color: Colors.white,)
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 5),
                                                  child: Text("Scout",style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500
                                                  ),),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                        ),
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return CreateOffer();
                                              }));
                                            },
                                            child: Container(

                                              height: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: [
                                                      Color.fromRGBO(255, 107, 50, .2),
                                                      Color.fromRGBO(255, 107, 50, 1),
                                                    ],
                                                  )
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Image.asset("assets/edit.png",width: 40,height: 40,color: Colors.white,)
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(top: 5),
                                                    child: Text("Create offer",style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w500
                                                    ),),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                childCount: 1,
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ]
          else if(_selectedItemIndex == 1)...[
            Flexible(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [

                      Expanded(
                        child: Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.black12
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Users")
                            ],
                          )
                        ),
                      ),

                      Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.black26
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Teams")
                          ],
                        )
                      )
                      ),
                    ],
                  ),
                ),
                Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12
                      ),
                      child: ListView.builder(
                        itemCount: contactlenght,
                          itemBuilder: (context,index){
                          return ContactBubble(
                            contact: contact[index],
                          );
                          }
                      ),
                    ),
                  ),
              ],
            ),
          ),
          ]
          else if(_selectedItemIndex == 3)...[
            Flexible(
              child: Container(
                child: ListView(
                  children: [
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

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewNotify()));
                      },
                      child: Card(
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
                          elevation: 20,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),

                            child: Center(
                              child: Text('Send New Notification'),
                            )
                          ),
                        ),
                    ),

                  ],
                ),
              ),
            )
            ],

          //bottom navigation bar
          Container(
            padding: EdgeInsets.only(bottom: 20).r,
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
                          child: _selectedItemIndex == 0 ?Icon(Icons.home_filled,color: Colors.black,size: 30.w,):Icon(Icons.home_filled,color: Colors.grey,size: 30.w,),
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
                    padding: EdgeInsets.only(top: 7),
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
                          child: _selectedItemIndex == 1 ? Icon(Icons.contact_page,color: Colors.black,size: 30.w,):Icon(Icons.contact_page,color: Colors.grey,size: 30.w,),
                        ),
                        Container(
                          child: Text("Contacts",style: TextStyle(
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
                    padding: EdgeInsets.only(top: 7),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {

                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.chat_bubble_outline_sharp,color: Colors.grey,size: 30.w,),
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
                    padding: EdgeInsets.only(top: 7),
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
                          child: _selectedItemIndex == 3 ? Icon(Icons.notifications_outlined,color: Colors.black,size: 30.w,) :Icon(Icons.notifications_on,color: Colors.grey,size: 30.w,),
                        ),
                        Container(
                          child: Text("Notify",style: TextStyle(
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
                    padding: EdgeInsets.only(top: 7),
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