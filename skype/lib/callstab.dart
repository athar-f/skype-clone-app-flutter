import 'package:flutter/material.dart';

class callstab extends StatefulWidget {
  const callstab({super.key});

  @override
  State<callstab> createState() => _callstabState();
}

class _callstabState extends State<callstab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            child: Column(children: [
              ExpansionTile(title: Text('Call'), children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 31, 43, 209),
                                Color.fromARGB(255, 66, 83, 210),
                                Color.fromARGB(255, 102, 148, 232),
                              ],
                              stops: [
                                0.2,
                                0.5,
                                0.8,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            )),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.white,
                            ),
                            Text(
                              'Start a call',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(137, 230, 203, 203)),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.link,
                                color: Colors.blueAccent,
                              ),
                              Text('Creste Skype link'),
                            ]),
                      ),
                    ),
                  ],
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'people',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Container(
                    // margin: EdgeInsets.all(10),
                    height: 50, width: 50,

                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 31, 43, 209),
                          Color.fromARGB(255, 66, 83, 210),
                          Color.fromARGB(255, 102, 148, 232),
                        ],
                        stops: [
                          0.2,
                          0.5,
                          0.8,
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: const Icon(Icons.person_outline),
                  ),
                  title: const Text('03001234567'),
                  trailing: const Icon(Icons.phone_outlined),
                ),
              ),
              ListTile(
                leading: Container(
                  // margin: EdgeInsets.all(10),
                  height: 50, width: 50,

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 31, 43, 209),
                        Color.fromARGB(255, 66, 83, 210),
                        Color.fromARGB(255, 102, 148, 232),
                      ],
                      stops: [
                        0.2,
                        0.5,
                        0.8,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: const Icon(Icons.person_outline),
                ),
                title: const Text('Ch Qaim'),
                trailing: const Icon(Icons.phone_outlined),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Container(
                    // margin: EdgeInsets.all(10),
                    height: 50, width: 50,

                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 31, 43, 209),
                          Color.fromARGB(255, 66, 83, 210),
                          Color.fromARGB(255, 102, 148, 232),
                        ],
                        stops: [
                          0.2,
                          0.5,
                          0.8,
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: const Icon(Icons.person_outline),
                  ),
                  title: const Text('Abdul Rauf'),
                  trailing: const Icon(Icons.phone_outlined),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 31, 43, 209),
                        Color.fromARGB(255, 66, 83, 210),
                        Color.fromARGB(255, 102, 148, 232),
                      ],
                      stops: [
                        0.2,
                        0.5,
                        0.8,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: const Icon(Icons.person_outline),
                ),
                title: const Text(' Sir Ahsan Irshad'),
                trailing: const Icon(Icons.phone_outlined),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
