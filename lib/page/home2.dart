import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid/page/create.dart';

class Home2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 107, 50, 1)
        ),
        child: ListView(
          children: [
            SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child:Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset("assets/handshake.png"),
                      ),
                    )
                  ],
                )
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Text("Never do Business alone!",textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),),
                    ),
                  )
                ],
              )
            ),
            SizedBox(
              height: 55,
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text("Leave your digital tasks to me",textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14
                          ),),
                      ),
                    )
                  ],
                )
            ),
            SizedBox(
              height: 55,
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset("assets/Pavigation.png"),
                      ),
                    )
                  ],
                )
            ),
            SizedBox(
              height: 75,
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                        child: Text("Skip",
                        style: TextStyle(
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Create();
                        }));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(203, 208, 185, 1),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                        child: Text("Next",style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

}