import 'package:flutter/material.dart';

import './widgets/actions_tab_bar.dart';
import './widgets/favourite_contacts.dart';

import './screens/login.dart';
import './screens/conversation.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "messaging app",
      theme: ThemeData(
        primaryColor: Color(0xff00adb5),
        
        textTheme: TextTheme(
          title: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 27,color: Colors.white
          ),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/home" :(ctx)=> Home(),
        "/login" :(ctx)=> Login(),
        "/conversation" :(ctx)=>Conversation()
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 35,
        ),
        title: Text(
          "Chats",
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          Icon(
            Icons.search,
            size: 35,
          )
        ],
      ),
      body: Column(
        children: <Widget>[ActionTabBar(), Expanded(child: FavouriteContact())],
      ),
    );
  }
}
