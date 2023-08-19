import 'package:flutter/material.dart';
import 'package:solid/page/createoffer.dart';
import 'package:solid/page/editoffer.dart';

class MyOffer extends StatefulWidget {
  const MyOffer({Key? key}) : super(key: key);

  @override
  _MyOfferState createState() => _MyOfferState();
}

class _MyOfferState extends State<MyOffer> {
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
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return CreateOffer();
                              }));
                            },
                            child: Container(
                                margin: EdgeInsets.only(bottom: 10,left: 20,right: 20),
                                padding: EdgeInsets.only(top: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey
                                      )
                                    )
                                  ),
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text("Create new offer",style: TextStyle(
                                      fontSize: 15
                                  ),),
                                ),
                            ),
                          );
                        },
                        childCount: 1,
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              int lilo = index + 1;
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return EditOffer(num: lilo.toString());
                              }));
                            },
                            child: Container(
                                margin: EdgeInsets.only(bottom: 10,left: 20,right: 20),
                                padding: EdgeInsets.only(top: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey
                                        )
                                      )
                                    ),
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text("Offer $lilo",style: TextStyle(
                                      fontSize: 15
                                    ),),
                                  ),
                            ),
                          );
                        },
                        childCount: 7,
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
