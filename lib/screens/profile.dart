import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/komol.jpg"),
            ),
            Container(
              child: Text(
                "Towhid Komol",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: "Lobster",
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            Text(
              "Student",
              style: TextStyle(
                fontSize:24,
                fontFamily: "SourceCodePro",
                fontWeight: FontWeight.w500,
                letterSpacing: 2.5,
                color: Colors.white.withOpacity(0.75) 
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.50),
              endIndent: 130,
              indent: 130,
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.orange,
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "+014821452785",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.orange,
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "komol@gmail.com",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}