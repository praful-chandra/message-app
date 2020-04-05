import 'package:flutter/material.dart';

import '../model/users.dart';

import '../extras/custom_colors.dart';

class AllContacts extends StatelessWidget {
  const AllContacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = UserList().users;

    return Container(
      decoration: BoxDecoration(
        color: CustomColors.background,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (ctx, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed("/conversation",arguments: users[index]);
                },
                              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/${users[index].avatar}'),
                        radius: 35,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                users[index].name,
                                style: TextStyle(
                                    color: Color(0xff393E46),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                "this is a demo text Message tdssdsdfsasdfasdfdsagfsagsdagwerfdsagfasdf",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[700]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Fri",
                        style: TextStyle(
                            color: Color(0xff393E46),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
