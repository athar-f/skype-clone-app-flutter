// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:skype/class.dart';

class chat extends StatefulWidget {
  final massages= massage;
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  List<String> rowtext = [
    'Imagine a new Natural wonder',
    'Invent a New Soft drink'
  ];
  List<String> drawertitle = [
    'Profile',
    'Premium',
    'Bookmarks',
    'List',
    'Spaces',
    'Monetisation',
  ];
  List<String> names = [
    'Athar',
    'Qaim',
    'bilal',
    'adnan',
    'Athar',
    'Qaim',
    'bilal',
    'Ali',
  ];
  List<IconData> Ticon = [(Icons.timelapse)];
  List<String> subt = [
    'Hay! This is bing! How I can help you...',
  ];
  List<String> Image = ['AF', 'Q', 'B', 'A', 'AF', 'Q', 'B', 'A'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          const SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          Expanded(
            child: Column(children: [
              Container(
                color: const Color.fromARGB(255, 124, 228, 235),
                child: Row(children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.white),
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 10),
                      child: const TextField(
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
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                      child: PopupMenuButton<String>(
                        itemBuilder: (context) => drawertitle
                            .map((e) => PopupMenuItem<String>(child: Text(e)))
                            .toList(),
                      ),
                    ),
                  ),
                ]),
              ),
              const ListTile(
                leading: Icon(Icons.videocam_outlined, size: 32),
                title: Text(
                  'Easy meating with anyone',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Tap here to start a video meeting'),
                trailing: Icon(Icons.cancel_outlined),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text('Your AI Co-polit')),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
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
                  child: const Center(
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
                title: const Text('Bing'),
                subtitle:
                    const Text('Hay! This is bing!How I can help you... '),
                trailing: const Icon(Icons.timelapse),
              ),
              Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rowtext.length,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.blue)),
                        child: Text(
                          rowtext[index],
                          style: const TextStyle(color: Colors.blue),
                        ),
                      );
                    },
                  )),
              Expanded(
                flex: 6,
                child: ListView.separated(
                  itemCount: names.length,
                  separatorBuilder: (context, index) => const Divider(
                    endIndent: 20,
                    indent: 20,
                  ),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(names[index]),
                      trailing: Icon(Ticon[0]),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
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
                            Image[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      subtitle: Text(
                        subt[0],
                      ),
                    
                    );
                  },
                ),
              ),
            ]),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.all(20),
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.blue[400],
              ),
              child: const Icon(Icons.edit_square),
            ),
          ),
        ]),
      ),
    );
  }
}
