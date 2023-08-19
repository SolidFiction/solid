import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid/page/signin.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Create extends StatefulWidget{
  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {

  final _fname = TextEditingController();
  final _text = TextEditingController();
  final _pass = TextEditingController();
  final _repass = TextEditingController();

  bool _validate = false;
  bool _valfname = false;
  bool _valpass = false;
  bool _valrepass = false;

  bool signdone = false;

  Future signup() async {
    setState(() {
      signdone = true;
    });

    //Response gotten for body i.e response.body then assigned to variable
    final response = await http
        .post(Uri.https('adeoropelumi.com', 'solid/signup.php'), body: {
      "fname" : _fname.text,
      "phone" : _text.text,
      "pass" : _pass.text,
      "repass" : _repass.text
    });

    //Response body variable collects json data from response variable
    var responsBody = json.decode(response.body);
    if (response.statusCode == 200) {
      if (jsonDecode(response.body) == "true") {
        setState(() {
          signdone = false;
          ScaffoldMessenger.of(this.context).showSnackBar(
              SnackBar(
                content: Text('Sign up Successful, proceed to login.'),
              ));
          _text.clear();
          _fname.clear();
          _pass.clear();
          _repass.clear();
        });
      }else if(jsonDecode(response.body) == "false"){
        setState(() {
          signdone = false;
          ScaffoldMessenger.of(this.context).showSnackBar(
              SnackBar(
                content: Text('Sign up not successful.'),
              ));
        });
      }else if(jsonDecode(response.body) == "user"){
        setState(() {
          signdone = false;
          ScaffoldMessenger.of(this.context).showSnackBar(
              SnackBar(
                content: Text('Username/Phone already exist.'),
              ));
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

  void samepass(){
    if(_pass.text == _repass.text){
      signup();
    }else{
      ScaffoldMessenger.of(this.context).showSnackBar(
          SnackBar(
            content: Text('Passwords are different, type in same passwords.'),
          ));
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
                      onTap: (){
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
                      child: Text("Let's Create \nYour Account!",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 30,top: 20),
                      child: TextField (
                        controller: _fname,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black,),
                            ),
                            labelText: 'FullName',
                            labelStyle: TextStyle(
                                color: Colors.black,
                              fontSize: 12
                            ),
                            errorText: _valfname?"FullName can't be empty":null
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 30,top: 20),
                      child: TextField (
                        controller: _text,
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
                          errorText: _validate?"Phone Number or Email can't be empty":null
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
                            errorText: _valpass ?"Password can't be empty":null
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 30,top: 20),
                      child: TextField (
                        controller: _repass,
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,),
                          ),
                          labelText: 'Re-type Password',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12
                          ),
                            errorText: _valrepass ?"Re-type password can't be empty":null
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30,left: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                if(_fname.text.isEmpty) {
                                  _valfname = true;
                                }else if(_text.text.isEmpty){
                                  _validate = true;
                                }else if(_pass.text.isEmpty){
                                  _valpass = true;
                                }else if(_repass.text.isEmpty){
                                  _valrepass = true;
                                }else{
                                  samepass();
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: signdone ? CircularProgressIndicator(color: Colors.white,) :Text("Sign up",style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        _text.clear();
                        _fname.clear();
                        _pass.clear();
                        _repass.clear();

                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        child: Text("Already have an account? Sign In",style: TextStyle(
                          fontStyle: FontStyle.italic
                        ),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 20),
                      child: Text("Or Sign up with",style: TextStyle(
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