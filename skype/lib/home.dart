import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:skype/calls.dart';
import 'package:skype/chat.dart';
import 'package:skype/contact.dart';

import 'package:skype/today.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final drawerController = ZoomDrawerController();
  List<Widget> screens = [chat(), Calls(), Contact(), Today()];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 124, 228, 235),
          leading: InkWell(
            onTap: () => drawerController.toggle!(),
            child: const Icon(Icons.menu, color: Colors.white,),
          ),
          title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Athar Farooq',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Share what you are upto',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
              ]),
          actions: [
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),  
        body: screens[selected],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black87,
          showUnselectedLabels: true,
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chat',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'Calls'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts), label: 'Contact'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/skypeicon.png',
                  width: 20,
                  height: 25,
                ),
                label: 'Today'),
          ],
        ),
      ),
    );
  }
}
