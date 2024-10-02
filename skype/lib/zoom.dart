import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:skype/home.dart';
import 'package:skype/menuscreen.dart';
class Zoom extends StatefulWidget {
  const Zoom({super.key});

  @override
  State<Zoom> createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  final drawerController=ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ZoomDrawer(drawerShadowsBackgroundColor: Colors.black,shadowLayer1Color:Colors.purple[200] ,
      controller:drawerController ,
      style: DrawerStyle.defaultStyle,
      menuScreen: MenuScreen(), 
      mainScreen: Home(),
      borderRadius:24.0 ,
  showShadow:true ,
      angle:- 0.0,
      menuBackgroundColor: Colors.blue,
      slideWidth: MediaQuery.of(context).size.width*.75,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,

      ),
    );
  }
}