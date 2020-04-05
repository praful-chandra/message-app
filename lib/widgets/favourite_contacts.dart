import 'package:flutter/material.dart';

import '../model/users.dart';

import './all_contacts.dart';

class FavouriteContact extends StatelessWidget {
  const FavouriteContact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff393E46),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[FavHeader(), FavBody()],
            ),
          ),
          Expanded(child: AllContacts())
        ],
      ),
    );
  }
}

class FavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Favourite Contacts",
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.white,
            size: 25,
          )
        ],
      ),
    );
  }
}

class FavBody extends StatelessWidget {
  final users = UserList().favUsers;

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;

    return Container(
      height: devSize.height * 0.13,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed("/conversation",arguments: users[index]);
              },
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/${users[index].avatar}'),
                    radius: 35,
                  ),
                  Text(
                    users[index].name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
