import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solid/page/freeoffers.dart';
import 'package:solid/page/signin.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Freehome extends StatefulWidget {
  String name = "";
  String email = "";
  Freehome({required this.name,required this.email});

  @override
  _FreehomeState createState() => _FreehomeState();
}

class _FreehomeState extends State<Freehome> {
  late SharedPreferences prefs;
  String? hi;
  String? user;
  int _selectedItemIndex =0;
  int todo = 1;
  List<TextEditingController> _controllers = [];
  String num = '2';
  void loadCounter() async {
    // Obtain shared preferences
    prefs = await SharedPreferences.getInstance();

    saveUsername();
    // load counter
    setState(() {
      hi = prefs.getString('lilo');
      user = prefs.getString('user');
    });

    // showcontact();
  }
  void saveCounter() async {
    await prefs.setString('lilo', 'log out');
    print("log out shared");
  }

  void saveUsername() async {
    await prefs.setString('user', widget.name);
    await prefs.setString('email', widget.email);
    print("saved freelancer username and email");
  }

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
                    child: Text("Invoices",
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

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                                  padding: EdgeInsets.only(top: 20,bottom: 0),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20,bottom: 10),
                              child: Image.asset("assets/Vector.png"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5,left: 20),
                              child: Text("Contract status:",style: TextStyle(
                                  color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5,left: 5),
                              child: Text("Active",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 40,left: 20),
                              child: Text("Next pay date:",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 40,left: 5),
                              child: Text("May 22nd",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),),
                            ),
                          ],
                        ),
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
                      child: Text("Profile",style: TextStyle(
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
                            margin: EdgeInsets.only(right: 20,top: 20),
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
                  // Flexible(
                  //   child: ListView.builder(
                  //       itemCount: todo,
                  //       itemBuilder: (context,index){
                  //         _controllers.add(new TextEditingController());
                  //         return Container(
                  //             margin: EdgeInsets.only(bottom: 10,left: 20,right: 20),
                  //             child: Row(
                  //               children: [
                  //                 Expanded(
                  //                   child: TextField(
                  //                     controller: _controllers[index],
                  //                     onChanged: (text) {
                  //
                  //                     },
                  //                     // keyboardType: TextInputType.multiline,
                  //                     maxLines: null,
                  //                     decoration: InputDecoration(
                  //                       enabledBorder: OutlineInputBorder(
                  //                         borderSide:
                  //                         BorderSide(width: 1, color: Colors.orangeAccent),
                  //                         borderRadius: BorderRadius.circular(15.0),
                  //                       ),
                  //                       focusedBorder: OutlineInputBorder(
                  //                         borderSide:
                  //                         BorderSide(width: 1, color: Colors.orangeAccent),
                  //                         // borderRadius: BorderRadius.circular(50.0),
                  //                       ),
                  //                       hintText: "Type message...",
                  //                       hintStyle: TextStyle(
                  //                         color: Colors.grey.shade500,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 GestureDetector(
                  //                   onTap: (){
                  //                     setState(() {
                  //                       todo--;
                  //                     });
                  //                   },
                  //                   child: Container(
                  //                     child: Icon(Icons.remove_circle_outline,color: Colors.redAccent,),
                  //                     margin: EdgeInsets.only(left: 10),
                  //                   ),
                  //                 ),
                  //               ],
                  //             )
                  //         );
                  //       }
                  //   ),
                  // ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
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
                                            child: TextField(
                                              controller: _controllers[index],
                                              onChanged: (text) {

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
                                  return GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return FreeLanceOffer();
                                      }));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 40,bottom: 60,left: 20,right: 20),
                                      height: 170,
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
                                          Image.asset("assets/viewoffer.png"),
                                          Container(
                                            margin: EdgeInsets.only(top: 5),
                                            child: Text("View your offers",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500
                                            ),),
                                          )
                                        ],
                                      ),
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
          else if(_selectedItemIndex ==1 )...[
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset("assets/Avatar.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("Dustin Warren",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22
                                ),),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 6),
                                child: Text("UX Designer",style: TextStyle(
                                  fontSize: 16,
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
                    margin: EdgeInsets.only(left: 20,top: 20),
                    child: Text("Description",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: Text("My name is Dustin, I’m a young designer from Dublin. I practice for 4 years now, worked with small and big agencies. Blablabla",style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 20),
                    child: Text("Average rating"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: RatingBar.builder(
                      initialRating: 4.5,
                      itemSize: 25,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 107, 50, 1),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 17,left: 20),
                    child: Text("Portfolio",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 30),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/1.png"),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child:Container(
                                    child: Image.asset("assets/2.png"),
                                  ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/3.png"),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child:Container(
                                  height: 101,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.photo_camera,size: 45,),
                                ),
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
                          margin: EdgeInsets.only(left: 20,bottom: 50),
                          padding: EdgeInsets.only(left: 22,top: 12,right: 22,bottom: 12),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 107, 50, 1),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Text("update",style: TextStyle(
                            color: Colors.white
                          ),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]else if(_selectedItemIndex == 3)...[
            Flexible(
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
                                        child: Text("You just got paid",style: TextStyle(
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
                                        child: Text("We just confirmed your part payment for website developement ",style: TextStyle(
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
                                  backgroundColor: Colors.grey,
                                  maxRadius: 15,
                                  child: Icon(Icons.check,color: Colors.white,),
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
                                        child: Text("Website Login Credentials",style: TextStyle(
                                            fontWeight: FontWeight.w500
                                        ),),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Text("Here are the login credentials for your wordpress dashboard",style: TextStyle(
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
                                  backgroundColor: Colors.grey,
                                  maxRadius: 15,
                                  child: Icon(Icons.check,color: Colors.white,),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            )
          ],

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
                          child: _selectedItemIndex == 1 ? Image.asset("assets/Profile icon.png",width: 40,height: 40,color: Colors.black,):Image.asset("assets/Profile icon.png",width: 40,height: 40,),
                        ),
                        Container(
                          child: Text("Profile",style: TextStyle(
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
                          child: Text("Notification",style: TextStyle(
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
