// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:skype/callstab.dart';
import 'package:skype/phone.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  color: const Color.fromARGB(255, 124, 228, 235),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const TabBar(tabs: [
                  Tab(text: 'Calls'),
                  Tab(
                    text: 'Phone',
                  )
                ]),
                Expanded(
                  child: TabBarView(children: [
                    callstab(),
                    phone(),
                  ]),
                ),
              ]),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Colors.blue),
                  width: 50,
                  height: 50,
                  child: const Icon(Icons.dialpad),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
