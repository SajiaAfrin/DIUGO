import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,40,0,0),
          child: Column(
            children: [
              Text(
                "Ticket",
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
                    child: Text("10:00",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54)),
                  ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text("11:00",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54),),
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
                padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Uttara", style: TextStyle(fontWeight: FontWeight.bold)),
                     Text("1 h 15 mins", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange)),
                    Text(
                      "DSC",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
               Padding(
                padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Surjomukhi 12", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      "BDT 25",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
               Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                child: Image.asset(
                  'assets/images/g.jpg',
                ),
              ),
            ),
           SizedBox(height: 20,),
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
                      "Buy The Ticket",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}