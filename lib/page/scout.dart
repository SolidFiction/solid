import 'package:flutter/material.dart';
import 'package:solid/page/scoutprofile.dart';
import 'package:solid/page/sendoffer.dart';

class Scout extends StatefulWidget {
  const Scout({Key? key}) : super(key: key);

  @override
  _ScoutState createState() => _ScoutState();
}

class _ScoutState extends State<Scout> {
  String drop = "Active";
  int filter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: Text("Scout",style: TextStyle(
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
            margin: EdgeInsets.only(top: 15,left: 20),
            child: Text("Filter"),
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
          Container(
            margin: EdgeInsets.only(left: 15,right: 20,top: 15,bottom: 10),
            child: DecoratedBox(
                decoration: BoxDecoration(
                  color:Colors.grey, //background color of dropdown button
                  border: Border.all(color: Colors.grey, width:1), //border of dropdown button
                  borderRadius: BorderRadius.circular(10), //border raiuds of dropdown button
                  // boxShadow: <BoxShadow>[ //apply shadow on Dropdown button
                  //   BoxShadow(
                  //       // color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                  //       // blurRadius: 5
                  //   ) //blur radius of shadow
                  // ]
                ),

                child:Padding(
                    padding: EdgeInsets.only(left:20, right:20),
                    child:DropdownButton(
                      value: drop,
                      items: [ //add items in the dropdown
                        DropdownMenuItem(
                          child: Text("Active",style: TextStyle(
                              fontSize: 17
                          ),),
                          value: "Active",
                        ),
                        DropdownMenuItem(
                            child: Text("Inactive",style: TextStyle(
                                fontSize: 17
                            ),),
                            value: "Inactive"
                        ),
                        // DropdownMenuItem(
                        //   child: Text("Omega Pacakage - N10,000",style: TextStyle(
                        //       fontSize: 17
                        //   ),),
                        //   value: "Omega Pacakage - N10,000",
                        // )

                      ],
                      onChanged: (value){ //get value when changed
                        setState(() {
                          drop = value!;
                        });
                        print("You have selected $value");
                      },
                      icon: Padding( //Icon at tail, arrow bottom is default icon
                          padding: EdgeInsets.only(left:20),
                          child:Icon(Icons.arrow_drop_down)
                      ),
                      iconEnabledColor: Colors.white, //Icon color
                      style: TextStyle(  //te
                          color: Colors.white, //Font color
                          fontSize: 20 //font size on dropdown button
                      ),

                      dropdownColor: Colors.grey, //dropdown background color
                      underline: Container(), //remove underline
                      isExpanded: true, //make true to make width 100%
                    )
                )
            ),
          ),
          Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return ScoutProfile();
                              }));
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: MediaQuery.of(context).size.width/3+10,
                                    decoration: BoxDecoration(
                                        // border: Border(
                                        //   left: BorderSide(),
                                        //   right: BorderSide(),
                                        //   top: BorderSide(),
                                        // ),
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                      border: Border.all(
                                        color: Colors.grey
                                      ),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                    ),
                                    child: Image.asset("assets/alabi.png"),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey
                                        ),
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                                    ),
                                    width: MediaQuery.of(context).size.width/3+10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("Tolu Alabi",style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                          ),),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Text("Web Developer",style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13
                                          ),),
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                              return SendOffer();
                                            }));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(255, 107, 50, 1),
                                              borderRadius: BorderRadius.circular(10),

                                            ),
                                            margin: EdgeInsets.only(left: 10,top: 20,bottom: 30),
                                            padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                                            child: Text("Send Offer",style: TextStyle(
                                              fontSize: 12.5,
                                              color: Colors.white
                                            ),),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: MediaQuery.of(context).size.width/3+10,
                                  decoration: BoxDecoration(
                                    // border: Border(
                                    //   left: BorderSide(),
                                    //   right: BorderSide(),
                                    //   top: BorderSide(),
                                    // ),
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                      border: Border.all(
                                          color: Colors.grey
                                      ),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                  ),
                                  child: Image.asset("assets/alabi.png"),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey
                                      ),
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                                  ),
                                  width: MediaQuery.of(context).size.width/3+10,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 10,top: 10),
                                        child: Text("Tolu Alabi",style: TextStyle(
                                          color: Color.fromRGBO(255, 107, 50, 1),
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10,top: 10),
                                        child: Text("Web Developer",style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13
                                        ),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(255, 107, 50, 1),
                                          borderRadius: BorderRadius.circular(10),

                                        ),
                                        margin: EdgeInsets.only(left: 10,top: 20,bottom: 30),
                                        padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                                        child: Text("Send Offer",style: TextStyle(
                                            fontSize: 12.5,
                                            color: Colors.white
                                        ),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: MediaQuery.of(context).size.width/3+10,
                                  decoration: BoxDecoration(
                                    // border: Border(
                                    //   left: BorderSide(),
                                    //   right: BorderSide(),
                                    //   top: BorderSide(),
                                    // ),
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                      border: Border.all(
                                          color: Colors.grey
                                      ),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                  ),
                                  child: Image.asset("assets/alabi.png"),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey
                                      ),
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                                  ),
                                  width: MediaQuery.of(context).size.width/3+10,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 10,top: 10),
                                        child: Text("Tolu Alabi",style: TextStyle(
                                          color: Color.fromRGBO(255, 107, 50, 1),
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10,top: 10),
                                        child: Text("Web Developer",style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13
                                        ),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(255, 107, 50, 1),
                                          borderRadius: BorderRadius.circular(10),

                                        ),
                                        margin: EdgeInsets.only(left: 10,top: 20,bottom: 30),
                                        padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                                        child: Text("Send Offer",style: TextStyle(
                                            fontSize: 12.5,
                                            color: Colors.white
                                        ),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: MediaQuery.of(context).size.width/3+10,
                                  decoration: BoxDecoration(
                                    // border: Border(
                                    //   left: BorderSide(),
                                    //   right: BorderSide(),
                                    //   top: BorderSide(),
                                    // ),
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                      border: Border.all(
                                          color: Colors.grey
                                      ),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                  ),
                                  child: Image.asset("assets/alabi.png"),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey
                                      ),
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                                  ),
                                  width: MediaQuery.of(context).size.width/3+10,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 10,top: 10),
                                        child: Text("Tolu Alabi",style: TextStyle(
                                          color: Color.fromRGBO(255, 107, 50, 1),
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10,top: 10),
                                        child: Text("Web Developer",style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13
                                        ),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(255, 107, 50, 1),
                                          borderRadius: BorderRadius.circular(10),

                                        ),
                                        margin: EdgeInsets.only(left: 10,top: 20,bottom: 30),
                                        padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                                        child: Text("Send Offer",style: TextStyle(
                                            fontSize: 12.5,
                                            color: Colors.white
                                        ),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
