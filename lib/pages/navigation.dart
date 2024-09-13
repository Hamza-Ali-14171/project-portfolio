import 'package:flutter/material.dart';

class N1 extends StatefulWidget {
  const N1({Key? key}) : super(key: key);

  @override
  State<N1> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<N1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal,
        child: Center(child: Text('navigation Page')),
      ),
    );
  }
}
