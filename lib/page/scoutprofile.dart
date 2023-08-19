import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ScoutProfile extends StatefulWidget {
  const ScoutProfile({Key? key}) : super(key: key);

  @override
  _ScoutProfileState createState() => _ScoutProfileState();
}

class _ScoutProfileState extends State<ScoutProfile> {
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
          ),
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
                              child: Text("Tolu Alabi",style: TextStyle(
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
                              child: Container(
                                child: Image.asset("assets/4.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
