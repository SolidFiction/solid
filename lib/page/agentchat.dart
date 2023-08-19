import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solid/page/agentbubble.dart';

class AgentChatMessage{
  String message;
  MessageType type;
  AgentChatMessage({required this.message, required this.type});
}
enum MessageType{
  Sender,
  Receiver,
}

class AgentChat extends StatefulWidget {
  String email = "";
  String agentmail = "";
  AgentChat({required this.email,required this.agentmail});

  @override
  _AgentChatState createState() => _AgentChatState();
}

class _AgentChatState extends State<AgentChat> {
  late SharedPreferences prefs;
  TextEditingController msg = new TextEditingController();
  String lilo = "";
  int chnge = 0;
  String? user;
  bool ActiveConnection = false;
  List<AgentChatMessage> chatMsg = [];
  Timer? timer;
  bool cancelTimer = false;
  int? addChat;
  int? secondaddChat;
  List? chatdata;
  List? secondchatdata;
  bool showChat = false;
  int sec = 0;
  bool send = false;

  void loadCounter() async {
    // Obtain shared preferences
    prefs = await SharedPreferences.getInstance();

    // load counter
    setState(() {
      user = prefs.getString('user');
      CheckUserConnection();
    });
  }

  Future CheckUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          ActiveConnection = true;
          print('Internet connection');
          chattingMessage();

        });
      }
    } on SocketException catch (_) {
      setState(() {
        print('No Internet connection');
        ActiveConnection = false;
      });
    }
  }

  //modify sent message
  String replacing(String word) {
    word = word.replaceAll("'", "{(L!I_0)}");
    word = word.replaceAll(r'\', r'\\');
    return word;
  }

  String modify(String word) {
    word = word.replaceAll("{(L!I_0)}", "'");
    word = word.replaceAll(r'\', r'\\');
    return word;
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

                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20,top: 20,right: 20),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orangeAccent),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(Icons.camera_alt_outlined),
                            ),
                            Container(
                              child: Text("Camera",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),),
                            ),
                          ],
                        ),
                      )
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20,top: 20,right: 20),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orangeAccent),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Icon(Icons.photo),
                          ),
                          Container(
                            child: Text("Photo & Video Library",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 20,top: 20,right: 20),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orangeAccent),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(Icons.insert_drive_file_outlined)
                          ),
                          Container(
                            child: Text("Document",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text("Cancel",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,

                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   child: Text("Ongoing projects",
                  //     style: TextStyle(
                  //         fontSize: 17,
                  //         fontWeight: FontWeight.w500
                  //     ),),
                  //   margin: EdgeInsets.only(left: 25,top: 20),
                  // ),
                  // Container(
                  //   child: Divider(height: 20,thickness: 2,),
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  // ),
                  // GestureDetector(
                  //   onTap: (){
                  //
                  //   },
                  //   child: Container(
                  //     child: Text("Saved messages",
                  //       style: TextStyle(
                  //           fontSize: 17,
                  //           fontWeight: FontWeight.w500
                  //       ),),
                  //     margin: EdgeInsets.only(left: 25,top: 20),
                  //   ),
                  // ),
                  // Container(
                  //   child: Divider(height: 20,thickness: 2,),
                  //   margin: EdgeInsets.only(left: 20,right: 20),
                  // ),
                ],
              ),
            ),
          );
        }
    );
  }

  void calltimer() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      sec++;
      if (mounted) {
        afterchattingMessage();
      }
      if (cancelTimer) {
        timer.cancel();
        print(sec);
      }
    });
  }

  Future sendmessage() async {
    setState(() {
      send = true;
    });

    //Response gotten for body i.e response.body then assigned to variable
    final response = await http
        .post(Uri.https('adeoropelumi.com', 'solid/agtmsg.php'), body: {
      "msg": replacing(msg.text),
      "agent": widget.agentmail,
      "user": widget.email
    });

    //Response body variable collects json data from response variable
    var responsBody = json.decode(response.body);

    if (response.statusCode == 200) {
      if (jsonDecode(response.body) == "true") {
        setState(() {
          send = false;
          msg.clear();
        });
      }
    }
  }



  Future afterchattingMessage() async {
    final response = await http
        .post(Uri.https('adeoropelumi.com', 'solid/agentmsg.php'), body: {
      "account": 'abellilo',
      "email": widget.email,
      "agent": widget.agentmail
    });
    var responsBody = json.decode(response.body);
    secondchatdata = responsBody;
    // print(responsBody);
    secondaddChat = secondchatdata?.length;
    print('after 7 seconds Chat Lenght:- $secondaddChat');
    if (chatdata?.length == secondaddChat) {
      print('No new chat');
    } else {

      print('New Chat Lenght:- $secondaddChat');
      //Chat Message after 7 seconds
      print('chat after 7 seconds is printed');

      for(int? q = chatdata?.length; q! <secondaddChat!; q++){
        String users = responsBody[q]['3'].toString();
        chatMsg.add(AgentChatMessage(message: modify(responsBody[q]['0'].toString()), type: users== 'agent' ?MessageType.Sender:MessageType.Receiver),);
      }

      //update new length of chatdata
      setState(() {
        chatdata = secondchatdata;
      });
    }

    setState(() {
      showChat = true;
    });

  }

  Future chattingMessage() async {
    final response = await http
        .post(Uri.https('adeoropelumi.com', 'solid/agentmsg.php'), body: {
      "account": 'abellilo',
      "email": widget.email,
      "agent": widget.agentmail
    });
    var responsBody = json.decode(response.body);

    chatdata = responsBody;
    addChat = chatdata?.length;
    print('Original Chat Lenght:- $addChat');
    for(int q =0; q<addChat!;q++){
      String users = responsBody[q]['3'].toString();
      chatMsg.add(AgentChatMessage(message: modify(responsBody[q]['0'].toString()), type: users== 'agent' ?MessageType.Sender:MessageType.Receiver),);
    }

    setState(() {
      showChat = true;
      calltimer();
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CheckUserConnection();
  }

  @override
  void dispose() {
    if (mounted) {
      timer?.cancel();
    }
    super.dispose();
  }

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
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40))
                  ),
                  padding: EdgeInsets.only(top: 30,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            cancelTimer = true;
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Icon(Icons.keyboard_backspace,color: Colors.white,size: 20,),
                            )
                        ),
                      ),
                      Container(
                        child: Text("Chat with Izzy",style: TextStyle(
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
                children: [
                  showChat? ListView.builder(
                      itemCount: chatMsg.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ChatBubble(
                          chatMessage: chatMsg[index],
                        );
                      }):Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text('loading chat')),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    showModal();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.add),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: msg,
                    onChanged: (text) {
                      // print('First text field: $text');
                      if(text.isEmpty){
                        setState(() {
                          chnge = 0;
                        });
                      }else if(text.isNotEmpty){
                        setState(() {
                          chnge = 1;
                        });
                      }
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
                chnge == 0 ? GestureDetector(
                  onTap: (){
                    setState(() {

                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: Icon(Icons.mic_rounded),
                  ),
                ) : Container(),
                chnge == 0 ? GestureDetector(
                  onTap: (){
                    setState(() {
                      lilo = msg.text;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: Icon(Icons.camera_alt_outlined),
                  ),
                ) : Container(),
                chnge == 1 ? GestureDetector(
                  onTap: (){
                    setState(() {
                      sendmessage();
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: send ?CircularProgressIndicator(color: Colors.black,) :Icon(Icons.send),
                  ),
                ) : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
