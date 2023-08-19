import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid/page/agentdashboard.dart';
import 'package:solid/page/create.dart';
import 'package:solid/page/dashboard.dart';
import 'package:solid/page/freehome.dart';
import 'package:solid/page/home2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences prefs;
  String? log="";
  String? username = "";
  String? email= "";

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  void loadCounter() async {
    // Obtain shared preferences
    prefs = await SharedPreferences.getInstance();

    // await prefs.setString('lilo', '');
    // await prefs.setString('user', '');
    // await prefs.setString('email', '');

    // load counter
    setState(() {

      log = prefs.getString('lilo');
      username = prefs.getString('user');
      email = prefs.getString('email');

      print(log);
      print(username);
      print(email);

      if(log == "logged in user"){
        print("user has logged in");
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
          return Dashboard(name: username!,email: email!,);
        }), (r){
          return false;
        });
      }else if(log == "log out"){
        print("user has logged out");
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
          return Create();
        }), (r){
          return false;
        });
      }else if(log == "logged in agent"){
        print("agent has logged in");
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
          return AgentDashboard(name: username!,email: email!,);
        }), (r){
          return false;
        });
      }else if(log == "logged in freelancer"){
        print("freelancer has logged in");
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
          return Freehome(name: username!,email: email!,);
        }), (r){
          return false;
        });
      }else{

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/solidfiction background image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("assets/Hi Logo.png"),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Text(
                        "I'm IZZY,",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      child: Text(
                        "your digital assistant",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: (){
                  print("pelumi");
                  if(log == "logged"){

                  }else if(log == "log out"){

                  }else{
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Home2();
                    }));
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 60,vertical: 15),
                  margin: EdgeInsets.only(bottom: 40),
                  child: Text("Get Started",textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
