import 'package:diu_go/screens/login_page.dart';
import 'package:diu_go/screens/ticket.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     int _currentIndex = 0;
  final tabs = [
  Center(child: Text('1')),
  Center(child: Text('2')),
    Center(child: Text('3')),
  ];
    return Scaffold(
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              child: Image.asset(
                'assets/images/1.jpg',
              ),
            ),
          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 150,
            endIndent: 150,
            color: Colors.grey,
          ),
          Icon(
            Icons.location_on,
            color: Colors.orangeAccent,
            size: 60,
          ),
          Text(
            "DIUGO",
            style: TextStyle(
                color: Colors.black45,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Choose Your Route"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Icon(
                  Icons.location_on,
                  color: Colors.orangeAccent,
                  size: 30,
                ),
              ),
            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 60,
            endIndent: 60,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle_outlined,
                  color: Colors.blue,
                  size: 30,
                ),
                Column(
                  children: [
                    Text("From"),
                    Text(
                      "Uttara",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 40,
            endIndent: 40,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle_outlined,
                  color: Colors.orangeAccent,
                  size: 30,
                ),
                Column(
                  children: [
                    Text("To"),
                    Text(
                      "DSC",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 40,
            endIndent: 40,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.orangeAccent,
                      size: 30,
                    ),
                    Text("Depart"),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.orangeAccent,
                      size: 30,
                    ),
                    Text("Return"),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 60,
            endIndent: 60,
            color: Colors.grey,
          ),
          Container(
            height: 45,
            width: 320,
            decoration: new BoxDecoration(
              color: Colors.orangeAccent,
             borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Search",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
         
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.payment, color: Colors.orangeAccent),
              // ignore: deprecated_member_use
              title: Text(
                'Ticket',
                style: TextStyle(color: Colors.orangeAccent),
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on, color: Colors.grey),
              // ignore: deprecated_member_use
              title: Text(
                'Routes',
                style: TextStyle(color: Colors.grey),
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey),
              // ignore: deprecated_member_use
              title:
                  Text('Profile', style: TextStyle(color: Colors.grey)),
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
