


import 'package:assignment7/Screens/Calculator/components/background.dart';
import 'package:assignment7/Screens/Calculator/components/simplecalculator.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: SimpleCalculator()
      ),);
  }
  
}



