import 'package:flutter/material.dart';

import '../extras/custom_colors.dart';

import '../model/users.dart';

class Conversation extends StatelessWidget {
  const Conversation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages = UserList().messages;
    Users name = ModalRoute.of(context).settings.arguments; 
    
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              name.name,
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              radius: 27,
              backgroundImage: AssetImage("assets/images/${name.avatar}"),
            )
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: CustomColors.background,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Container(
            child: ListView.builder(
              reverse: true,
                itemCount: messages.length,
                itemBuilder: (ctx, index) {
                  final msg = messages[index];
                  return msg.isMe
                      ? IsMe(
                          message: msg.message,
                          time: msg.time,
                        )
                      : NotMe(
                          message: msg.message,
                          time: msg.time,
                        );
                }),
          ),
        ),
      ),
    );
  }
}

class NotMe extends StatelessWidget {
  final String time;
  final String message;

  NotMe({this.time, this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.65,
        height: 90,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.39),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              time,
              style: TextStyle(
                  color: CustomColors.accentColor.withOpacity(0.59),
                  fontWeight: FontWeight.w900),
            ),
            Text(
              message,
              style: TextStyle(
                  color: CustomColors.accentColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

class IsMe extends StatelessWidget {
  final String time;
  final String message;

  IsMe({this.message, this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.65,
        height: 90,
        decoration: BoxDecoration(
            color: CustomColors.accentColor.withOpacity(0.39),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              time,
              style: TextStyle(
                  color: CustomColors.accentColor.withOpacity(0.59),
                  fontWeight: FontWeight.w900),
            ),
            Text(
              message,
              style: TextStyle(
                  color: CustomColors.accentColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
