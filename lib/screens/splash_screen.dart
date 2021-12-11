import 'package:diu_go/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/bgsplash.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(
                Icons.location_on,
                color: Colors.amber,
                size: 70,
              ),
              Text(
                "DIUGO",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 28,
                    fontFamily: "Lobster",
                    fontWeight: FontWeight.w700),
              ),
             
              SizedBox(height: 80,),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith<double?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) return 16;
                    return null;
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('SignUp'),
              ),
               ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith<double?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) return 16;
                    return null;
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInPage()),
                  );
                },
                child: Text('Log  In'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
