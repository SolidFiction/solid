import 'package:flutter/material.dart';

class Web extends StatefulWidget {
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
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
                        child: Text("Web and App\nDevelopment",
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
                      "Improve your customer experience.",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      "Create strong link between your customers and your business.",
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
                          child: Text(
                            "\$114",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 107, 50, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 35),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "One Pager",
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
                                child: Text("Home page"),
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
                                child: Text("Counter Hacking Security"),
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
                                child: Text("Contact form"),
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
                                child: Text("Email notifications"),
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
                                child: Text("Looks good on different screen sizes"),
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
                                child: Text("Loading speed optimization"),
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
                                child: Text("Free non-premium Domain (1 Year)"),
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
                                child: Text("Free shared hosting (1 Year)"),
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
                          child: Text(
                            "\$160",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 107, 50, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 35),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Economic",
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
                                child: Text("Home page"),
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
                                child: Text("Product or service page"),
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
                                child: Text("Contact form"),
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
                                child: Text("Email notifications"),
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
                                child: Text("Looks good on different screen sizes"),
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
                                child: Text("Loading speed optimization"),
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
                                child: Text("Free non-premium Domain (1 Year)"),
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
                                child: Text("Free shared hosting (1 year)"),
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
                                child: Text("Counter Hacking Security"),
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
                                child: Text("E-commerce function"),
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
                                child: Text("10 free product uploads"),
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
                          child: Text(
                            "\$450",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 107, 50, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 35),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Business",
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
                                child: Text("Home page"),
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
                                child: Text("Products, services or e-learning pages"),
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
                                child: Text("Contact form"),
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
                                child: Text("Email notifications"),
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
                                child: Text("Looks good on different screen sizes"),
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
                                child: Text("Loading speed optimization"),
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
                                child: Text("Free non-premium Domain (1 Year)"),
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
                                child: Text("Free shared hosting (1 Year)"),
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
                                child: Text("Counter Hacking Security"),
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
                                child: Text("E-commerce function"),
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
                                child: Text("20 free product uploads"),
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
                                child: Text("4 Supporting Pages"),
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
                                child: Text("Content writing"),
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
                                child: Text("User Subscription"),
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
                                child: Text("Simple user dashboard"),
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
                                child: Text("Live Chat or WhatsAp chat"),
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
                                  "\$1000",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 107, 50, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5,top: 5),
                                child: Text("| Starting price"),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Mobile App",
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
                                child: Text("Home page"),
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
                                child: Text("Counter Hacking Security"),
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
                                child: Text("Contact form"),
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
                                child: Text("Email notifications"),
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
                                child: Text("Looks good on different screen sizes"),
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
                                child: Text("Loading speed optimization"),
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
                                child: Text("Free non-premium Domain (1 Year)"),
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
                                child: Text("Free shared hosting (1 Year)"),
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
