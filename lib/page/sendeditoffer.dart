import 'package:flutter/material.dart';

class SendEditOffer extends StatefulWidget {
  String num = "";
  SendEditOffer({required this.num});

  @override
  _SendEditOfferState createState() => _SendEditOfferState();
}

class _SendEditOfferState extends State<SendEditOffer> {
  FocusNode myFocusNode = new FocusNode();
  TextEditingController offername = new TextEditingController();
  TextEditingController role = new TextEditingController();
  TextEditingController price = new TextEditingController();
  TextEditingController duration = new TextEditingController();
  TextEditingController description = new TextEditingController();
  TextEditingController skills = new TextEditingController();
  TextEditingController tags = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offername.text = "Offer "+widget.num;
    role.text = "social media manager";
    price.text = "\$ 100";
    duration.text = "1 month";
    description.text = "create content calendar";
    skills.text = "copywriting";
    tags.text = "social media management";
  }
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
                      child: Text("Offer "+widget.num,style: TextStyle(
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
              child:ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      controller: offername,
                      decoration: InputDecoration(
                          labelText: "Offer Name (only visible to you)"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      controller: role,
                      decoration: InputDecoration(
                          labelText: "Role"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      controller: price,
                      decoration: InputDecoration(
                          labelText: "Price"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      controller: duration,
                      decoration: InputDecoration(
                          labelText: "Duration"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      controller: description,
                      decoration: InputDecoration(
                          labelText: "Job description"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      controller: skills,
                      decoration: InputDecoration(
                          labelText: "Skills and requirement"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      controller: tags,
                      focusNode: myFocusNode,
                      decoration: InputDecoration(
                          labelText: "tags",
                          // labelStyle: TextStyle(
                          //     color: Color.fromRGBO(255, 107, 50, 1)
                          // ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(255, 107, 50, 1),
                              )
                          )
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10,top: 30),
                          padding: EdgeInsets.only(left: 30,top: 15,right: 30,bottom: 15),
                          decoration:BoxDecoration (
                              color: Color.fromRGBO(255, 107, 50, 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("Update",style: TextStyle(
                              color: Colors.white
                          ),),
                        ),
                      ],
                    ),
                  )
                ],
              )
          )
        ],
      )
    );
  }
}
