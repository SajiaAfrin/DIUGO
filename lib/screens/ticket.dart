import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.amber,
      title: Text("Ticket"),
      ),
    );
  }
}