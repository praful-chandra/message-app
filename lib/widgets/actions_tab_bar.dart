import 'package:flutter/material.dart';

class ActionTabBar extends StatefulWidget {
  @override
  _ActionTabBarState createState() => _ActionTabBarState();
}

class _ActionTabBarState extends State<ActionTabBar> {
  var selectedIndex = 0;
  final items = ['Message', 'Online', 'Groups', 'Friends'];

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: devSize.height * .1,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
                      child: Container(
              
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                items[index],
                style: TextStyle(
                    color: index == selectedIndex ? Colors.white : Colors.white60, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
