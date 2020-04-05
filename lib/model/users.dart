import 'package:flutter/foundation.dart';


class Users{

  final int id;
  final String name;
  final String avatar;

  Users({
    this.id,
    this.avatar,
    this.name
  });

}


class UserList{

  final  _users= [
      Users(id: 0,name: "Shivam",avatar: "0.jpg"),
      Users(id: 1,name: "Maneesh",avatar: "1.jpg"),
      Users(id: 2,name: "Rahul",avatar: "2.jpg"),
      Users(id: 3,name: "Raju",avatar: "3.jpg"),
      Users(id: 4,name: "Gautham",avatar: "4.jpg"),
      Users(id: 5,name: "Mark",avatar: "5.jpg"),
      Users(id: 6,name: "Moses",avatar: "6.jpg"),
      Users(id: 7,name: "Rastogi",avatar: "7.jpg"),
      Users(id: 8,name: "John",avatar: "8.jpg"),
      Users(id: 9,name: "Ram",avatar: "9.jpg"),

  ];

  final _favUsers =[
      Users(id: 1,name: "Maneesh",avatar: "1.jpg"),
      Users(id: 5,name: "Mark",avatar: "5.jpg"),
      Users(id: 8,name: "John",avatar: "8.jpg"),
      Users(id: 9,name: "Ram",avatar: "9.jpg"),
      Users(id: 2,name: "Rahul",avatar: "2.jpg"),
            Users(id: 3,name: "Raju",avatar: "3.jpg"),
                  Users(id: 6,name: "Moses",avatar: "6.jpg"),



  ];

  final _messages = [
    Message(message: "this is a demo text message",isMe: false,time: "1.00"),
    Message(message: "this is a demo text message",isMe: true,time: "1.30"),
    Message(message: "this is a demo text message",isMe: false,time: "2.00"),
    Message(message: "this is a demo text message",isMe: false,time: "2.30"),
    Message(message: "this is a demo text message",isMe: true,time: "3.00"),
    Message(message: "this is a demo text message",isMe: false,time: "3.30"),
    Message(message: "this is a demo text message",isMe: true,time: "4.00"),
    Message(message: "this is a demo text message",isMe: false,time: "4.30"),
    Message(message: "this is a demo text message",isMe: false,time: "5.00"),
    Message(message: "this is a demo text message",isMe: false,time: "5.30"),
    Message(message: "this is a demo text message",isMe: true,time: "6.00"),
    Message(message: "this is a demo text message",isMe: false,time: "6.30"),
    Message(message: "this is a demo text message",isMe: false,time: "7.00"),
    Message(message: "this is a demo text message",isMe: true,time: "7.30"),

  ];

  List<Message> get messages{
    return[..._messages.reversed];
  }

  List<Users> get users {
    return[..._users];
  }

  List<Users> get favUsers{
    return[..._favUsers];
  }

}


class Message{
  final String message;
  final bool isMe;
  final String time;

  Message({
    this.isMe,this.message,this.time,
  });
}