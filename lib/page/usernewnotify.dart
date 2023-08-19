import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:solid/page/todonotify.dart';


class Packages{
  String id = "";
  String name = "";
  String picked = "";
  Packages({required this.id,required this.name,required this.picked});
}

class UserNewNotify extends StatefulWidget {
  String username = "";
  String useremail = "";
  String agentemail =  "";
  UserNewNotify({required this.username, required this.useremail, required this.agentemail});

  @override
  _UserNewNotifyState createState() => _UserNewNotifyState();
}

class _UserNewNotifyState extends State<UserNewNotify> {

  int _selectedIndex = 0;
  bool check = false;
  bool attach = false;
  bool menu = false;
  bool pay = false;
  String lilo="";
  int todo = 1;
  bool showpackage = false;
  bool packagesent = false;
  List? packages;
  int? packageslenght;
  List <Packages> packageslist = [];
  bool picked = false;
  String indexnumber = "";
  String ids = "";
  bool links = false;
  int lastid = 0;
  int getid = 0 ;
  int todolenght = 0;
  TextEditingController name = new TextEditingController();
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    username();
    random();
    lenghtoftodo();
  }

  void random(){
    var rng = Random();
    for (var i = 0; i < 6; i++) {
      print(rng.nextInt(100));
      indexnumber += rng.nextInt(100).toString();
    }
    ids = "sf-"+indexnumber;
    print(ids);
  }



  void newtodolenght(){
    for(int i = 0; i < todolist.length; i++){
      lastid = todolist[i].id;
    }
    print(lastid);
    todolenght = todolist.length;
  }

  void lenghtoftodo(){
    todolenght = todolist.length;
  }

  void username() {
    name.text = widget.username;
  }

  Future package() async {

    setState(() {
      showpackage = true;
    });

    final response = await http
        .post(Uri.https('adeoropelumi.com', 'solid/packages.php'), body: {
      "email": widget.username,
    });

    var responsBody = json.decode(response.body);

    packages = responsBody;

    // print(responsBody);
    packageslenght = packages?.length;
    print('Number of contacts is  $packageslenght');

    for(int? q = 0; q! <packageslenght!; q++){
      String id = responsBody[q]['0'].toString();
      String name = responsBody[q]['1'].toString();
      String picked = responsBody[q]['2'].toString();
      print(name);
      packageslist.add(Packages(id: id, name: name,picked: picked));
    }

    setState(() {
      showpackage = false;
    });

  }

  Future sendpackage() async {
    setState(() {
      packagesent = true;
    });
    packageslenght = todolist.length;

    print('Number of packages listed is  $packageslenght');

    for(int q = 0; q <todolist.length; q++){
      String packagename = todolist[q].todocontroller.text;


        final response = await http
            .post(Uri.https('adeoropelumi.com', 'solid/userpackage.php'), body: {
          "useremail": widget.useremail,
          "id" : ids,
          "packagename" : packagename,
          "agentemail": widget.agentemail
        });

        if(response.statusCode == 200){
          if(jsonDecode(response.body) == "true"){
            print(packagename+" is inserted");
          }
        }


    }
    setState(() {
      packagesent = false;
    });
  }

  void listoutpackages(){
    for(int i = 0; i < todolist.length; i++){
      String pack = todolist[i].todocontroller.text;
      print(pack);
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 712));
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 107, 50, 1),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(40).w,bottomLeft: Radius.circular(40).w)
                ),
                padding: EdgeInsets.only(top: 30,bottom: 20).r,
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
                            borderRadius: BorderRadius.circular(10).w
                        ),
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Icon(Icons.keyboard_backspace,color: Colors.white,size: 20.w,),
                      ),
                    ),
                    Container(
                      child: Text("New Notification"+lilo,style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
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
            child: CustomScrollView(
                  shrinkWrap: true,
                  slivers:[
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                              (context,index){
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10,right: 10).r,
                                  child: TextField(
                                    controller: name,
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
                                              padding: EdgeInsets.only(top:16,right: 0,left: 10).r,
                                              child: Text('To:',style: TextStyle(color: Colors.grey,fontSize: 17.sp),),
                                            )
                                          ],),
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,right: 10).r,
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
                                              padding: EdgeInsets.only(top:16,right: 0,left: 10).r,
                                              child: Text('Tag:',style: TextStyle(color: Colors.grey,fontSize: 17.sp),),
                                            )
                                          ],),
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,right: 10).r,
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
                                              padding: EdgeInsets.only(top:16,right: 0,left: 10).r,
                                              child: Text('Subject:',style: TextStyle(color: Colors.grey,fontSize: 17.sp),),
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
                                  margin: EdgeInsets.only(top: 5).r,
                                  padding: EdgeInsets.symmetric(vertical: 5).r,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            if(links == false){
                                              links = true;
                                            }else if(links == true){
                                              links = false;
                                            }
                                          });
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black54,
                                          radius: 15.5.w,
                                          child: Container(
                                              child: Icon(Icons.link,color: Colors.white,size: 20.w,)
                                          ),
                                        ),
                                      ),
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
                                          radius: 20.w,
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
                                            padding: EdgeInsets.all(5).r,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.circular(10).w
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
                                            padding: EdgeInsets.all(5).r,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.circular(10).w
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
                                          radius: 20.w,
                                          child: Container(
                                              child: Image.asset("assets/pay.png")
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            listoutpackages();
                                            sendpackage();
                                          });
                                        },
                                        child: packagesent? CircularProgressIndicator(
                                          color: Colors.orangeAccent,
                                          backgroundColor: Colors.white,
                                        )
                                            :Container(
                                            padding: EdgeInsets.all(5).r,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.circular(10).w
                                            ),
                                            child: Image.asset("assets/send.png")
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5,left: 5,right: 5).r,
                                  child: TextField(
                                    maxLines: null,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(width: 1, color: Colors.orangeAccent),
                                        borderRadius: BorderRadius.circular(0).w,
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
                              ],
                            );
                          },
                          childCount: 1
                      ),
                    ),

                    //attach == true
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                              (context,index){
                            return attach == true ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15,top: 15).r,
                                  child: Text("Attachments",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15,top: 15,bottom: 10).r,
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
                                        margin: EdgeInsets.only(left: 20,right: 20).r,
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
                            ):Container();
                          },
                          childCount: 1
                      ),
                    ),

                    //links == true
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                              (context,index){
                            return links == true ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15,right: 15,top: 10).r,
                                  padding: EdgeInsets.only(bottom: 5).r,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter link',
                                        hintStyle: TextStyle(
                                            fontStyle: FontStyle.italic
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10).w,
                                            borderSide: BorderSide(
                                                color: Colors.orangeAccent
                                            )
                                        )
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10).w
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Color.fromRGBO(255, 107, 50, 1),),
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            borderRadius: BorderRadius.circular(10).w
                                        ),
                                        padding: EdgeInsets.only(left: 25,top: 15,bottom: 15,right: 25).r,
                                        child: Text("Submit link",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp
                                        ),),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ) : Container();
                          },
                          childCount: 1
                      ),
                    ),


                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                              (context,index){
                            return Container(
                              margin: EdgeInsets.only(bottom: 10,left: 15,right: 15).r,
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
                                      ),
                                    ),
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
                            );
                          },
                          childCount: 1
                      ),
                    ),

                    //menu == true ?
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                              (context,index){
                                _controllers.add(new TextEditingController());
                                void addtodo(){
                                  var rng = Random();
                                   lastid = rng.nextInt(1000000);
                                   for(int i = 0; i < todolist.length; i++){
                                     if(todolist[i].id == lastid){
                                       lastid = rng.nextInt(1000000);
                                     }
                                   }
                                  getid++;
                                  print(getid);
                                  print(lastid);
                                  todolist.add(Todo(id: lastid, msg: "",todocontroller: _controllers[getid]));
                                  todolenght = todolist.length;
                                }
                            return menu == true ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15,top: 15),
                                  child: Text("Package details",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                  ),),
                                ),

                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            addtodo();
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
                              ],
                            ) : Container();
                          },
                          childCount: 1
                      ),
                    ),

                    //menu == true ?
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return menu == true ? Container(
                              margin: EdgeInsets.only(top:10, bottom: 5,left: 20,right: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: TextField(
                                        controller: todolist[index].todocontroller,
                                        onChanged: (text) {

                                        },
                                        // keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(top: 2,left: 10),
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
                                          hintText: "Enter products...",
                                          hintStyle: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 12.sp
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        todolist.removeWhere((i) =>
                                        i.id ==
                                            todolist[index].id);
                                        newtodolenght();
                                      });
                                    },
                                    child: Container(
                                      child: Icon(Icons.remove_circle_outline,color: Colors.redAccent,),
                                      margin: EdgeInsets.only(left: 10),
                                    ),
                                  ),
                                ],
                              )
                          ) : Container();
                        },
                        childCount: todolist.length,
                      ),
                    ),

                    // //Sized box
                    // SliverList(
                    //   delegate: SliverChildBuilderDelegate(
                    //           (context,index){
                    //         return SizedBox(
                    //           height: 20,
                    //         );
                    //       }
                    //   ),
                    // )
                  ]
              ),
          ),

        ],
      ),
    );
  }
}
