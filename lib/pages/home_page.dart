import 'package:flutter/material.dart';
import 'package:myapp/pages/navigation.dart';
import 'package:myapp/pages/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List<Widget> pages = [
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
      child: Center(
        child: Text('Home Page'),
      ),
    ),
    NotificationPage(),
    N1(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            print(value);
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.abc,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: Icon(
              Icons.notification_add,
            ),
          ),
        ],
      ),
      body: pages[index],
    );
  }
}
