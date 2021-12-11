
import 'package:diu_go/screens/home_page.dart';
import 'package:diu_go/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/bottonbar.dart';


class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Stack(children: [
          Image.asset(
            'assets/images/bgsplash.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
               image: DecorationImage(
                  image: AssetImage('assets/images/bgsplash.png'),
                  fit: BoxFit.cover)
            ),
          ),
          ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: Text(
                        'Welcome to',
                        style: TextStyle(color: Colors.black54, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(120, 30, 0, 0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/logoicon.png',
                            // color: Colors.white,
                            height: 30,
                            width: 30,
                          ),
                          // Icon(Icons.agriculture_sharp,color: Colors.white,size: 50,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'DIUGO',
                            style: TextStyle(color: Colors.black54, fontSize: 30,),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 7),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Username'),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 7),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavigation()),
                        );
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(fontSize: 20,color: Colors.black45),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 350,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/facebook.svg',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Log in with Facebook",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 25),
                        child: Row(
                          children: [
                            Text(
                              "Don't have account?",
                              style: TextStyle(color: Colors.black54),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                                },
                                child: Text(
                                  "Register Now",
                                  style: TextStyle(color: Colors.orangeAccent),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
