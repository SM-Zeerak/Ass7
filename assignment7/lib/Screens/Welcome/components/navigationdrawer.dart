import 'package:assignment7/Screens/AlertDialogPage/alert_dialog.dart';
import 'package:assignment7/Screens/BottomNavBar/bottom_nav.dart';
import 'package:assignment7/Screens/Calculator/calculator_screen.dart';
import 'package:assignment7/Screens/TabBar/TabBar.dart';
import 'package:assignment7/Screens/TodoApp/todo_main.dart';

import 'package:flutter/material.dart';





class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
              )),
            ListTile(
              leading: Icon(Icons.home_max_outlined),
              title: Text("Alert Dialog Page"),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => AlertDialogPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border_outlined),
              title: Text("Bottom Nav Bar"),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => BottomNav()));
              },
            ),
            ListTile(
              leading: Icon(Icons.workspaces_outline),
              title: Text("TabBar & GridView"),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => TabBarPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Calculator"),
              onTap: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context) => CalculatorScreen()));
              },
            ),
             ListTile(
              leading: Icon(Icons.app_blocking_outlined),
              title: Text("Todo App"),
              onTap: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context) => TodoPage()));
              },
            ),
          ],
        ),
      ),
    );

    
  }
}