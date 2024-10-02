// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<String> options = [
    'Sort by Recent',
    'Sort by Unread',
    'Sort by Active',
    'Mark all as read',
    'Hide favourite',
    'Enable compact layout'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          SingleChildScrollView(
            child: Column(children: [
              Container(
                color: const Color.fromARGB(255, 124, 228, 235),
                child: Row(children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white),
                        margin: EdgeInsets.fromLTRB(10, 20, 0, 10),
                        //color: Color.fromARGB(255, 124, 228, 235),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                gapPadding: 20,
                              ),
                              labelText: 'Search',
                              prefixIcon: Icon(Icons.search),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 118, 194, 224),
                              )),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                        // color: Color.fromARGB(255, 124, 228, 235),
                      ),
                      // color: Colors.white,
                      margin: EdgeInsets.fromLTRB(5, 20, 5, 10),

                      child: PopupMenuButton(
                          itemBuilder: (context) => options
                              .map((e) => PopupMenuItem<String>(child: Text(e)))
                              .toList()),
                    ),
                  ),
                ]),
              ),
              ListTile(
                leading: Icon(Icons.people_alt_outlined, size: 24),
                title: Text(
                  'Check your contacts settings to manage who can find and see you on skype',
                  style: TextStyle(fontSize: 12),
                ),
                // subtitle: Text('Tap here to start a video meeting'),
                trailing: Icon(Icons.cancel_outlined),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text('Your AI Co-polit')),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 121, 209, 215),
                        Color.fromARGB(255, 146, 212, 212),
                        Color.fromARGB(255, 210, 239, 236),
                      ],
                      stops: [0.3, 0.5, 0.7],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'B',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
                title: Text('Bing'),
                subtitle: Text('Hay! This is bing!How I can help you... '),
                trailing: Icon(Icons.timelapse),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue)),
                      child: Text(
                        'Imagine a new Natural wonder',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue)),
                      child: Text(
                        'Invent a new soft drink',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text('Favourites')),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 121, 209, 215),
                        Color.fromARGB(255, 146, 212, 212),
                        Color.fromARGB(255, 210, 239, 236),
                      ],
                      stops: [0.3, 0.5, 0.7],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'AF',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                title: Text('Athar Farooq'),
                subtitle: Text(
                    "Hay! I'm Athar Farooq. You can Contact me on Skype... "),
                trailing: Icon(Icons.timelapse),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text('A')),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 121, 209, 215),
                        Color.fromARGB(255, 146, 212, 212),
                        Color.fromARGB(255, 210, 239, 236),
                      ],
                      stops: [0.3, 0.5, 0.7],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'AF',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                title: Text('Athar Farooq'),
                subtitle: Text('Hay! This is bing!How I can help you... '),
                trailing: Icon(Icons.timelapse),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text('A')),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 121, 209, 215),
                        Color.fromARGB(255, 146, 212, 212),
                        Color.fromARGB(255, 210, 239, 236),
                      ],
                      stops: [0.3, 0.5, 0.7],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'AR',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                title: Text('Abdul Rauf'),
                subtitle: Text('Hay! This is bing!How I can help you... '),
                trailing: Icon(Icons.timelapse),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text('A')),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 121, 209, 215),
                        Color.fromARGB(255, 146, 212, 212),
                        Color.fromARGB(255, 210, 239, 236),
                      ],
                      stops: [0.3, 0.5, 0.7],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'AS',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                title: Text('Adnan Sher'),
                subtitle: Text(
                    'Hay! Meet with Ch Adnan Taiwana belongs to polical background and tried to forehead Developer... '),
                trailing: Icon(Icons.timelapse),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text('B')),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 121, 209, 215),
                        Color.fromARGB(255, 146, 212, 212),
                        Color.fromARGB(255, 210, 239, 236),
                      ],
                      stops: [0.3, 0.5, 0.7],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'BH',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                title: Text('Bilal Haider'),
                subtitle: Text(
                    'Hay! Meet with Bilal Badshah, whos belongs to Business family... '),
                trailing: Icon(Icons.timelapse),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text('C')),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 121, 209, 215),
                        Color.fromARGB(255, 146, 212, 212),
                        Color.fromARGB(255, 210, 239, 236),
                      ],
                      stops: [0.3, 0.5, 0.7],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'CQ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                title: Text('Ch Qaim'),
                subtitle: Text(
                    'Hay! Meet with Ch Qaim jafar, whos belongs to develpor family... '),
                trailing: Icon(Icons.timelapse),
              ),
            ]),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.all(20),
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.blue[400],
              ),
              child: Icon(Icons.person_add_alt_1_outlined),
            ),
          ),
        ]),
      ),

      //   body: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //         Container(
      //           color: Color.fromARGB(255, 124, 228, 235),
      //           child: Row(

      //             children: [
      //               Expanded(flex: 1, child: Icon(Icons.person)),
      //               Expanded(
      //                 flex: 5,
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Title(
      //                       color: Colors.blue,
      //                       child: const Text(
      //                         'Athar Farooq',
      //                         style: TextStyle(
      //                             fontWeight: FontWeight.w500, color: Colors.blue),
      //                       ),
      //                     ),
      //                     const Text(
      //                       'Share what you are upto',
      //                       style: TextStyle(fontSize: 12, color: Colors.blue),
      //                     ),
      //                   ],
      //                 ),
      //               ),

      //             ],
      //           ),
      //         ),
      //         Container(
      //           color: Color.fromARGB(255, 124, 228, 235),
      //           child: Row(children: [
      //             Expanded(
      //               flex: 5,
      //               child: Container(
      //                 margin: EdgeInsets.all(20),

      //                // color: Color.fromARGB(255, 233, 233, 233),
      //                 child: TextField(
      //                   decoration: InputDecoration(
      //                   labelText: 'Search',
      //                     prefixIcon: Icon(Icons.search),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             Expanded(
      //               flex: 1,
      //               child: Container(

      //                 //color: Colors.white,
      //                 margin: EdgeInsets.all(10),
      //                 child: Icon(
      //                   Icons.filter_list_outlined,
      //                   color: Colors.black38,
      //                 ),
      //               ),
      //             ),
      //           ]),
      //         ),
      //         TextField(
      //           decoration: InputDecoration(

      //               labelText:
      //                   'Check your contacts settings to manage who can find and see you on skype',
      //               prefixIcon: Icon(
      //                 Icons.people_alt_outlined,
      //               ),
      //               suffixIcon: Icon(Icons.cancel_rounded),
      //           ),
      //         ),
      //         Text('Favourite'),
      //         ListTile(
      //           leading: Icon(Icons.person),
      //           title: Text('Athar Farooq(You)'),
      //         ), Text('A'),
      //         ListTile(
      //           leading: Icon(Icons.person),
      //           title: Text('Athar Farooq(You)'),
      //         ), Text('B'),
      //         ListTile(
      //           leading: Icon(Icons.person),
      //           title: Text('Bing)'),
      //         ), Text('E'),
      //         ListTile(
      //           leading: Icon(Icons.person),
      //           title: Text('Echo/Sound Test Service'),
      //         ), Text('S'),
      //         ListTile(
      //           leading: Icon(Icons.person),
      //           title: Text('Sir Ahsen Irshad'),
      //         ),

      //       ]),
      //     ),
      //   ),
    );
  }
}
