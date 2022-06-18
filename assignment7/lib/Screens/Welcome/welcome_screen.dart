


import 'package:assignment7/Screens/Welcome/components/body.dart';
import 'package:assignment7/Screens/Welcome/components/navigationdrawer.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home PAGE"),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(),
        body: const Body(),
    );
  }
}