import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../extras/custom_colors.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Chats",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: Transform.translate(
                offset: const Offset(0.0, 30.0),
                child: SvgPicture.asset(
                  "assets/images/conversation.svg",
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ClipPath(
                clipper: backgroundClipper(),
                child: Container(
                  color: CustomColors.background,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.53,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "To get started\nenter your phone number",
                        style: TextStyle(
                          fontSize: 22,
                          color: CustomColors.accentColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "Enter your phone number",
                          fillColor: CustomColors.background,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacementNamed("/home",);
                        },
                                              child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Transform.translate(
                            offset: const Offset(-20, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(50))),
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                style: Theme.of(context).textTheme.title,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class backgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.1);
    path.quadraticBezierTo(
        size.width * 0.25, 0.0, size.width * 0.5, size.height * 0.1);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.2, size.width, size.height * 0.1);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
