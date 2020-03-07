import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.height -
        MediaQuery.of(context).size.height / 2.3);
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.teal,
          child: Column(children: [
            CustomPaint(
              foregroundPainter: ShapePainter(),
              child: Container(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 2.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(
                          1, 0.0), // 10% of the width, so there are ten blinds.
                      colors: [
                        const Color(0xFFdd2476),
                        const Color(0xFFff512f)
                      ],
                    ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("asset/img/football.jpg"))),
              ),
            ),
          ]),
          // child: CustomPaint(
          //   foregroundPainter: ShapePainter(),
          //   child: Container(
          //     height: MediaQuery.of(context).size.height -
          //         MediaQuery.of(context).size.height / 2.3,
          //     width: MediaQuery.of(context).size.width,
          //     color: Colors.blue,
          //   ),
          // ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height / 2.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    1, 0.0), // 10% of the width, so there are ten blinds.
                colors: [const Color(0xFFdd2476), const Color(0xFFff512f)],
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login to start!",
                      style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Container(
                    child: Row(children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            TextField(
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  labelText: 'Your Email',
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      color: Colors.white),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            SizedBox(height: 20.0),
                            TextField(
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              decoration: InputDecoration(
                                  labelText: 'Password ',
                                  contentPadding: EdgeInsets.all(0),
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      color: Colors.white),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              obscureText: true,
                            ),
                            SizedBox(height: 20.0),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Forgot Password",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow)),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => Signup()),
                                    );
                                  },
                                  child: Text("Sign up",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellow)),
                                )
                              ],
                            ))
                          ]),
                        ),
                      ),
                      Container(
                        width: 70,
                        alignment: Alignment.center,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.amber),
                        child: Text(
                          "GO",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              color: Colors.white),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    height: 30,
                  )
                ]),
          ),
        )
      ]),
    );
  }
}

class ShapePainter extends CustomPainter {
  Path leftPathBig = Path();

  Path leftPathSmall = Path();
  @override
  void paint(Canvas canvas, Size size) {
    leftPathBig.lineTo(0, size.height / 2);
    leftPathBig.lineTo(size.width / 2 + 100, size.height);
    leftPathBig.lineTo(size.width, size.height - 100);
    leftPathBig.lineTo(size.width, size.height);
    leftPathBig.lineTo(0, size.height);

    leftPathSmall.lineTo(0, size.height / 2 + 100);
    leftPathSmall.lineTo(size.width / 2 + 100, size.height);
    leftPathSmall.lineTo(size.width, size.height - 50);
    leftPathSmall.lineTo(size.width, size.height);
    leftPathSmall.lineTo(0, size.height);

    canvas.drawPath(
        leftPathBig, Paint()..color = Color(0xFFff512f).withOpacity(0.7));

    canvas.drawPath(
        leftPathSmall, Paint()..color = Color(0xFFdd2476).withOpacity(0.7));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
