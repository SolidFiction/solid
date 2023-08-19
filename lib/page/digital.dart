import 'package:flutter/material.dart';

class Digital extends StatefulWidget {
  @override
  _DigitalState createState() => _DigitalState();
}

class _DigitalState extends State<Digital> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 107, 50, 1),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
                  padding: EdgeInsets.only(top: 30, bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Icon(
                            Icons.keyboard_backspace,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Container(
                        child: Text("Digital\nMarketing",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center),
                      ),
                      Container(
                        child: Image.asset("assets/Hamburger.png"),
                      )
                    ],
                  )),
            ),
            Flexible(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Digital\nMarketing",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      "A cost effective way to reach your target audience.",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 5,
                        margin: EdgeInsets.only(top: 25, left: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 107, 50, 1),
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                          child: Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                    BoxDecoration(color: Color.fromRGBO(219, 186, 163, .5)),
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Samples",
                            style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                          ),
                          margin: EdgeInsets.only(left: 20, top: 10),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text("From solid fiction's portfolio"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration:
                    BoxDecoration(color: Color.fromRGBO(219, 186, 163, .5)),
                    padding: EdgeInsets.only(),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/brand2.png",
                            width: 170,
                            height: 150,
                          ),
                          decoration: BoxDecoration(),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/brand1.png",
                            width: 170,
                            height: 150,
                          ),
                          decoration: BoxDecoration(),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/brand2.png",
                            width: 170,
                            height: 150,
                          ),
                          decoration: BoxDecoration(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                    BoxDecoration(color: Color.fromRGBO(219, 186, 163, .5)),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Pricing",
                            style:
                            TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                          ),
                          margin: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          child: Icon(
                            Icons.circle,
                            color: Color.fromRGBO(255, 107, 50, 1),
                            size: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if(_selectedIndex == 0)...[
                          GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedIndex = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color.fromRGBO(219, 186, 163, 1)),
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(219, 186, 163, 1)
                            ),
                            padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                            child: Text("Social media management",style: TextStyle(
                              color: Colors.white
                            ),),
                          ),
                        ),
                          GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.only(left: 15,right: 15,top: 3,bottom: 3),
                            child: Text("Paid Ads"),
                          ),
                        )]
                        else if(_selectedIndex == 1)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                            child: Text("Social media management"),
                        ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 1;
                              });
                            },
                            child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color.fromRGBO(219, 186, 163, 1)),
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(219, 186, 163, 1)
                            ),
                            padding: EdgeInsets.only(left: 15,right: 15,top: 3,bottom: 3),
                            child: Text("Paid Ads",style: TextStyle(
                              color: Colors.white
                            ),),
                        ),
                          )]
                        else if(_selectedIndex == 2)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Social media management"),
                            ),
                          ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  _selectedIndex = 1;
                                });
                              },
                              child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 15,right: 15,top: 3,bottom: 3),
                              child: Text("Paid Ads"),
                          ),
                            )]
                        else if(_selectedIndex == 3)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                                child: Text("Social media management"),
                              ),
                          ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _selectedIndex = 1;
                                  });
                                },
                                child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(left: 15,right: 15,top: 3,bottom: 3),
                                child: Text("Paid Ads"),
                            ),
                              )]
                        else if(_selectedIndex == 4)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                                  child: Text("Social media management"),
                                ),
                          ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _selectedIndex = 1;
                                    });
                                  },
                                  child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.only(left: 15,right: 15,top: 3,bottom: 3),
                                  child: Text("Paid Ads"),
                              ),
                                )],
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if(_selectedIndex == 0)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 2;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Email Marketing"),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 3;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Influencer Marketing"),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 4;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("SEO"),
                            ),
                          )
                        ]else if(_selectedIndex == 1)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 2;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Email Marketing"),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 3;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Influencer Marketing"),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 4;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("SEO"),
                            ),
                          )
                        ]else if(_selectedIndex == 2)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 2;
                              });
                              print("Hi");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color.fromRGBO(219, 186, 163, 1)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(219, 186, 163, 1)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Email Marketing",style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 3;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Influencer Marketing"),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 4;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("SEO"),
                            ),
                          )
                        ]else if(_selectedIndex == 3)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 2;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Email Marketing"),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 3;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color.fromRGBO(219, 186, 163, 1)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(219, 186, 163, 1)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Influencer Marketing",style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 4;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("SEO"),
                            ),
                          )
                        ]else if(_selectedIndex == 4)...[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 2;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Email Marketing"),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 3;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("Influencer Marketing"),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _selectedIndex = 4;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color.fromRGBO(219, 186, 163, 1)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(219, 186, 163, 1)
                              ),
                              padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                              child: Text("SEO",style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          )
                        ],


                      ],
                    ),
                  ),

                  if(_selectedIndex == 0)...[
                    Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(219, 186, 163, 1),
                            Colors.white,
                          ],
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 60, left: 20),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "\$60",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 107, 50, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5,top: 5),
                                child: Text("| per Month"),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Just Design",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              margin: EdgeInsets.only(top: 5, left: 20),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7)),
                              padding: EdgeInsets.only(
                                  left: 13, right: 5, top: 5, bottom: 5),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Get Started",
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 107, 50, 1),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    padding: EdgeInsets.only(right: 3),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color.fromRGBO(255, 107, 50, 1),
                                      size: 17,
                                    ),
                                  )
                                ],
                              ),
                              margin: EdgeInsets.only(top: 5, right: 20),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Color.fromRGBO(255, 107, 50, 1),
                                size: 15,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text("3 graphics posts per week"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Color.fromRGBO(255, 107, 50, 1),
                                size: 15,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text("Captivating graphics"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Color.fromRGBO(255, 107, 50, 1),
                                size: 15,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text("1 review per post"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Color.fromRGBO(255, 107, 50, 1),
                                size: 15,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text("Access to support"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Color.fromRGBO(255, 107, 50, 1),
                                size: 15,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text("You post the content yourself"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$245",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Basic Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Content Calendar"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Tailored strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Content research"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("8 graphics posts per month"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("4 video posts per month (30secs max)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("1 review per post"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("15 mins daily community engagement"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly Report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Access to Support"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("30 dollars Ad boost included"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Dedicated account manager"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$550",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Standard Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Content Calendar"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Tailored strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Content research"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("12 graphics post per month"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("12 video post per month (45secs max)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("2 reviews per post"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("30 mins daily community engagement"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly Report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Access to Support"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("50 dollars Ad boost included"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Dedicated account manager"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$1200",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Rapid Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Content Calendar"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Tailored strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Content research"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("4 graphics posts per month"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("20 video post posts per month (60secs max)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("3 reviews per post"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("1-hour daily community engagement"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly Report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Access to Support"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("30 dollars Ad boost included"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Dedicated account manager"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Emergency out of hours support"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            margin: EdgeInsets.only(bottom: 80,top: 10),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                              child: Text("Create a tailored Package",style: TextStyle(
                                  color: Colors.white
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]else if (_selectedIndex == 1)...[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$300",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Basic Marketing",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad budget - Up to \$5k"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Multiple platforms"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Setup and management"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Performance monitoring"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad Copywriting"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad creative"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$2000",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Standard Marketing",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad budget - \$5 to \$50k"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Multiple platforms"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Setup and management"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Performance monitoring"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad Copywriting"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad creative"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$6000",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Advanced Marketing",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad budget - \$50k to \$100k"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Multiple platforms"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Setup and management"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Performance monitoring"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad Copywriting"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Ad creative"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly report"),
                                )
                              ],
                            ),
                          ),

                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            margin: EdgeInsets.only(bottom: 80,top: 10),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                              child: Text("Create a tailored Package",style: TextStyle(
                                  color: Colors.white
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]else if(_selectedIndex == 2)...[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$350",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Stay In Touch",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("4 emails monthly"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Tailored strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("E-mail calendar"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Analysis of past email marketing efforts"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Email copywriting (3 revisions)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Email design (2 revisions)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Industry research"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Audience optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Migrating contacts"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Dedicated account manager"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Access to support"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$925",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Basic Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("4 emails monthly"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Tailored strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("E-mail calendar"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Analysis of past email marketing efforts"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Email copywriting (3 revisions)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Email design (2 revisions)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Industry research"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Audience optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Migrating contacts"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Access to support"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Subscriber acquisition"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$1675",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Standard Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("8 emails monthly"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Tailored strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("E-mail calendar"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Analysis of past email marketing efforts"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Email copywriting (3 revisions)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Email design (2 revisions)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Industry research"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Audience optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Migrating contacts"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Dedicated account manager"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Access to support"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Subscriber acquisition"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$2225",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("| per Month"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Rapid Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("12 emails monthly"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Tailored strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("E-mail calendar"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Analysis of past email marketing efforts"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Email copywriting (3 revisions)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Email design (2 revisions)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly report"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Industry research"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Audience optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Migrating contacts"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Dedicated account manager"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Access to support"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Subscriber acquisition"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            margin: EdgeInsets.only(bottom: 80,top: 10),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                              child: Text("Create a tailored Package",style: TextStyle(
                                  color: Colors.white
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]else if(_selectedIndex == 3)...[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$61",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("excluding influencer fees"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Basic Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Consultation"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer marketing strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Options (3 Nano influencers)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer onboarding"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer management"),
                                )
                              ],
                            ),
                          ),

                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$147",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("excluding influencer fees"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Standard Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Consultation"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer marketing strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Options (5 Micro & Macro influencers)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer onboarding"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer management"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$305",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,top: 5),
                                  child: Text("excluding influencer fees"),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Rapid Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Consultation"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer marketing strategy"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Options (7 Macro & Mega influencers)"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer onboarding"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Influencer management"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                  ]else if(_selectedIndex == 4)...[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$1500",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Basic Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Up to 100 pages optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Up to 100 keywords optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Site audit"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Keyword/competitor analysis"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Local SEO"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly reporting"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$3000",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Standard Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Up to 250 pages optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Up to 250 keywords optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Site audit"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Keyword/competitor analysis"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Local SEO"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly reporting"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(219, 186, 163, 1),
                              Colors.white,
                            ],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "\$6000",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Rapid Growth",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                margin: EdgeInsets.only(top: 5, left: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.only(
                                    left: 13, right: 5, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Get Started",
                                        style: TextStyle(
                                            color: Color.fromRGBO(255, 107, 50, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      padding: EdgeInsets.only(right: 3),
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromRGBO(255, 107, 50, 1),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 5, right: 20),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 20, left: 15),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Up to 500 pages optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Up to 500 keywords optimization"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Site audit"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Keyword/competitor analysis"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Local SEO"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromRGBO(255, 107, 50, 1),
                                  size: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text("Monthly reporting"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
