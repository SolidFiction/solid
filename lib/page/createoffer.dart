import 'package:flutter/material.dart';

class CreateOffer extends StatefulWidget {
  const CreateOffer({Key? key}) : super(key: key);

  @override
  _CreateOfferState createState() => _CreateOfferState();
}

class _CreateOfferState extends State<CreateOffer> {
  FocusNode myFocusNode = new FocusNode();
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
                      child: Text("Create Offer",style: TextStyle(
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
                      decoration: InputDecoration(
                        labelText: "Offer Name (only visible to you)"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Role"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Price"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Duration"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Job description"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Skills and requirement"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    child: TextField(
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
                          child: Text("Create",style: TextStyle(
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
      ),
    );
  }
}
