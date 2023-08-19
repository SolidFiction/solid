import 'package:flutter/material.dart';

class FreeLanceOffer extends StatefulWidget {
  const FreeLanceOffer({Key? key}) : super(key: key);

  @override
  _FreeLanceOfferState createState() => _FreeLanceOfferState();
}

class _FreeLanceOfferState extends State<FreeLanceOffer> {

  int filter = 0;
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
                      child: Text("My Offers",style: TextStyle(
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
          Container(
            margin: EdgeInsets.only(top: 20,left: 20),
            child: Row(
              children: [
                Container(
                  child: Text("Top Opportunities For You"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 3),
                  child: Image.asset("assets/shining.png",height: 17,color: Color.fromRGBO(255,215,0, 1),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15,right: 10,top: 10),
            child: Wrap(
              spacing: 0.0, // gap between adjacent chips
              runSpacing: 5.0, // gap between lines
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    setState(() {
                      filter =0;
                    });
                  },
                  child: Container(
                    decoration: filter == 0? BoxDecoration(
                        color: Color.fromRGBO(255, 107, 50, 1),
                        borderRadius: BorderRadius.circular(15)
                    ):BoxDecoration(),
                    padding: filter == 0 ? EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5): EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                    child: Text("All",style: filter ==0 ? TextStyle(
                        color: Colors.white
                    ):TextStyle(),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      filter =1;
                    });
                  },
                  child: Container(
                    decoration: filter == 1? BoxDecoration(
                        color: Color.fromRGBO(255, 107, 50, 1),
                        borderRadius: BorderRadius.circular(15)
                    ):BoxDecoration(),
                    padding: filter == 1 ? EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5): EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                    child: Text("Developer",style: filter ==1 ? TextStyle(
                        color: Colors.white
                    ):TextStyle(),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      filter =2;
                    });
                  },
                  child: Container(
                    decoration: filter == 2? BoxDecoration(
                        color: Color.fromRGBO(255, 107, 50, 1),
                        borderRadius: BorderRadius.circular(15)
                    ):BoxDecoration(),
                    padding: filter == 2 ? EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5): EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                    child: Text("Marketer",style: filter ==2 ? TextStyle(
                        color: Colors.white
                    ):TextStyle(),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      filter =3;
                    });
                  },
                  child: Container(
                    decoration: filter == 3? BoxDecoration(
                        color: Color.fromRGBO(255, 107, 50, 1),
                        borderRadius: BorderRadius.circular(15)
                    ):BoxDecoration(),
                    padding: filter == 3 ? EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5): EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                    child: Text("Grapics Designer",style: filter ==3 ? TextStyle(
                        color: Colors.white
                    ):TextStyle(),),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(219, 186, 163, 1),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        margin:EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 238, 238, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                              margin: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.calendar_today_outlined,size: 19,),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    child: Text("Posted 3 days ago",style: TextStyle(
                                      fontSize: 13
                                    ),),
                                  )
                                ],
                              )
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color.fromRGBO(112, 41, 99, 1),
                              child: Image.asset("assets/system.png",color: Colors.white,height: 40,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Text("Social media manager",style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                              decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text("Social media"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text("content creation"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10,left: 10),
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.access_time),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                      child: Text("1 month")
                                  )
                                ],
                              )
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(223, 234, 249, 1),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.monetization_on_outlined,color: Colors.grey,),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5,),
                                    child: Text("\$300"),
                                  )
                                ],
                              )
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20,left: 10,top: 12,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                              child: Text("Show Interest",style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),),
                            ),
                            Container(
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white)
                              ),
                              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                              child: Text("Go To Offer",style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(219, 186, 163, 1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        margin:EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(238, 238, 238, 1),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                                margin: EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(Icons.calendar_today_outlined,size: 19,),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      child: Text("Posted 3 days ago",style: TextStyle(
                                          fontSize: 13
                                      ),),
                                    )
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color.fromRGBO(112, 41, 99, 1),
                              child: Image.asset("assets/system.png",color: Colors.white,height: 40,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Text("Social media manager",style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text("Social media"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text("content creation"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10,left: 10),
                        child: Row(
                          children: [
                            Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.access_time),
                                    Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text("1 month")
                                    )
                                  ],
                                )
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(223, 234, 249, 1),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(Icons.monetization_on_outlined,color: Colors.grey,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5,),
                                      child: Text("\$300"),
                                    )
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20,left: 10,top: 12,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                              child: Text("Show Interest",style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),),
                            ),
                            Container(
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white)
                              ),
                              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                              child: Text("Go To Offer",style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),),
                            ),
                          ],
                        ),
                      )
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
