// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:skype/zoom.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                width: 100,
                height: 50,
                child: Image.asset(
                  'assets/images.png',
                )),
            Text(
              'Sign in',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('to continue to skype'),
            TextField(
              decoration: InputDecoration(hintText: 'Skype, phone or email'),
            ),
            Row(
              children: [
                Text('Use a phone number instead'),
                TextButton(onPressed: () {}, child: Text('Create one!')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Back',
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Zoom(),
                          ));
                    },
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.zero)))
                    //  ButtonStyle(
                    //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    //     RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.zero,
                    //         side: BorderSide(color: Colors.red),),
                    //   ),
                    // ),
                    ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
