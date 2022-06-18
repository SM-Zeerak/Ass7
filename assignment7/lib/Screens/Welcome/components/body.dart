

// ignore_for_file: deprecated_member_use, prefer_const_constructors


import 'package:assignment7/Screens/AlertDialogPage/alert_dialog.dart';
import 'package:assignment7/Screens/BottomNavBar/bottom_nav.dart';
import 'package:assignment7/Screens/Calculator/calculator_screen.dart';
import 'package:assignment7/Screens/TabBar/TabBar.dart';
import 'package:assignment7/Screens/TodoApp/todo_main.dart';

import 'package:assignment7/Screens/Welcome/components/background.dart';
import 'package:assignment7/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../components/rounded_button.dart';



class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "ASSIGNMENT 7",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17
            ),
            ),
          SizedBox(height: size.height * 0.03,),
          SvgPicture.asset("assets/icons/chat.svg", 
          height: size.height * 0.25,),
          SizedBox(height: size.height * 0.05,),
          RoundedButton(
            text: "ALERT DIALOG PAGE",
            press: (){Navigator.push(context, 
                MaterialPageRoute(builder: (context) => AlertDialogPage()));
              },
          ),
          RoundedButton(
            text: "Drawer & Bottom Nav Bar",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => BottomNav()));
            },
          ),
          RoundedButton(
            text: "TabBar & GridView",
            press: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => TabBarPage()));
            },
          ),
          RoundedButton(
            text: "Calulator",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: (){
              
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => CalculatorScreen()));
            },
          ),
          RoundedButton(
            text: "Todo App",
            press: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => TodoPage()));
            },
          ),
        ],
          ),
      ),);
  }
  
  widget({required FlatButton child}) {}
}

