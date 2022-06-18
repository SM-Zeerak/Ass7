







import 'package:assignment7/Screens/Calculator/components/SimpleCalculator.dart';

import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Scaffold(
      appBar: AppBar(title: Text('Simple Calculator')),
      
        body:  SimpleCalculator(),
    );
  }
}