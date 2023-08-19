import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid/page/agentdashboard.dart';
import 'package:solid/page/dashboard.dart';
import 'package:solid/page/freehome.dart';
import 'package:solid/page/reset.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Signin extends StatefulWidget{
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  String? hi;

  void loadCounter() async {
    // Obtain shared preferences
    prefs = await SharedPreferences.getInstance();
    // load counter
    setState(() {
      hi = prefs.getString('lilo');
    });
  }

  final _phone = TextEditingController();
  final _pass = TextEditingController();

  bool _valphone = false;
  bool _valpassword = false;
  bool signdone = false;

  void saveCounter() async {
    await prefs.setString('lilo', 'logged in user');
    print("saved user identifier on sign in");
  }

  void agentsaveCounter() async {
    await prefs.setString('lilo', 'logged in agent');
    print("saved agent identifier on sign in");
  }

  void freesaveCounter() async {
    await prefs.setString('lilo', 'logged in freelancer');
    print("saved Freelancer identifier on sign in");
  }

  Future signin() async {
    setState(() {
      signdone = true;
    });

    //Response gotten for body i.e response.body then assigned to variable
    final response = await http
        .post(Uri.https('adeoropelumi.com', 'solid/login.php'), body: {
      "fname" : _phone.text,
      "pass" : _pass.text,
    });

    final responsename = await http
        .post(Uri.https('adeoropelumi.com', 'solid/name.php'), body: {
      "fname" : _phone.text,
    });

    String lilo = jsonDecode(responsename.body);
    //Response body variable collects json data from response variable
    var responsBody = json.decode(response.body);
    if (response.statusCode == 200) {
      if (jsonDecode(response.body) == "true") {
        setState(() {
          print(lilo);
          signdone = false;
          ScaffoldMessenger.of(this.context).showSnackBar(
              SnackBar(
                content: Text('Logged in'),
              ));
          saveCounter();
          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard(name: lilo,)));
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
            return Dashboard(name: lilo, email: _phone.text,);
          }), (r){
            return false;
          });
        });
      }else if(jsonDecode(response.body) == "false"){
        setState(() {
          signdone = false;
          ScaffoldMessenger.of(this.context).showSnackBar(
              SnackBar(
                content: Text('wrong username or passowrd'),
              ));
        });
      }else if (jsonDecode(response.body) == "agent") {
        setState(() {
          print(lilo);
          signdone = false;
          ScaffoldMessenger.of(this.context).showSnackBar(
              SnackBar(
                content: Text('Logged in'),
              ));
          agentsaveCounter();
          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard(name: lilo,)));
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
            return AgentDashboard(name: lilo, email: _phone.text,);
          }), (r){
            return false;
          });
        });
      }else if (jsonDecode(response.body) == "freelancer") {
        setState(() {
          print(lilo);
          signdone = false;
          ScaffoldMessenger.of(this.context).showSnackBar(
              SnackBar(
                content: Text('Logged in'),
              ));
          freesaveCounter();
          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard(name: lilo,)));
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
            return Freehome(name: lilo, email: _phone.text,);
          }), (r){
            return false;
          });
        });
      }else{
        setState(() {
          signdone = false;
          ScaffoldMessenger.of(this.context).showSnackBar(
              SnackBar(
                content: Text('Error.'),
              ));
        });
      }
    }
    else{
      setState(() {
        signdone = false;
        ScaffoldMessenger.of(this.context).showSnackBar(
            SnackBar(
              content: Text('Network Issues.'),
            ));
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Column(
          children: [
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 107, 50, 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 50,left: 23),
                        padding: EdgeInsets.only(bottom: 50),
                        child: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 25,
                    transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Sign in \nto your Account!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                        ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 30,top: 20),
                      child: TextField (
                        keyboardType: TextInputType.emailAddress,
                        controller: _phone,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,),
                          ),
                          labelText: 'Phone Number or Email',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12
                          ),
                          errorText: _valphone ? "Phone Number/Email can't be empty" : null
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 30,top: 20),
                      child: TextField (
                        controller: _pass,
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12
                          ),
                            errorText: _valpassword ? "Password can't be empty" : null
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Reset();
                              }));
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 25, 20, 10),
                              child: Text("Forgot password?"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                if(_phone.text.isEmpty){
                                  _valphone = true;
                                }else if(_pass.text.isEmpty){
                                  _valpassword = true;
                                }else{
                                  signin();
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: signdone ? CircularProgressIndicator(color: Colors.white,):Text("Sign in",style: TextStyle(
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 20),
                      child: Text("Or Sign in with",style: TextStyle(
                        color: Color.fromRGBO(255, 107, 50, 1),
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,bottom: 30),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(249, 249, 252, 1),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                            margin: EdgeInsets.only(left: 20),
                            child: Image.asset("assets/google.png",width: 20,height: 20,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(249, 249, 252, 1),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset("assets/facebook.png",width: 20,height: 20,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(249, 249, 252, 1),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset("assets/twitter.png",width: 20,height: 20,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}