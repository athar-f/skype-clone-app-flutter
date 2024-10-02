import 'package:flutter/material.dart';

class phone extends StatefulWidget {
  const phone({super.key});

  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Credit balance: 0.00",
                    prefixIcon: const Icon(Icons.payments_outlined),
                    suffixIcon: const Icon(Icons.more_vert_rounded)),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        clipBehavior: Clip.none,
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 200,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 127, 55, 131),
                        ),
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('International Calls'),
                              Text('Sibscriptions'),
                              Text('100+Countries'),
                            ]),
                      ),
                      const Positioned(
                          top: 20,
                          right: 20,
                          child: Icon(
                            Icons.public,
                            size: 50,
                            color: Color.fromARGB(255, 239, 47, 47),
                          )),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 200,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue),
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Skype Credit'),
                              Text('Call any phone')
                            ]),
                      ),
                      const Positioned(
                          top: 20,
                          right: 20,
                          child: Icon(
                            Icons.payments_outlined,
                            size: 50,
                          )),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        width: 200,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green),
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Skype number from'),
                              Text('25+ scountries')
                            ]),
                      ),
                      const Positioned(
                          top: 20,
                          right: 20,
                          child: Icon(
                            Icons.phone,
                            size: 50,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('people'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
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
                title: const Text('03001234567'),
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
              title: const Text('Ch Qaim'),
              trailing: const Icon(Icons.phone_outlined),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
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
    );
  }
}
