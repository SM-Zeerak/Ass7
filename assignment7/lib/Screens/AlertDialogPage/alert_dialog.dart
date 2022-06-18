



// ignore_for_file: prefer_const_constructors

import 'package:assignment7/Screens/AlertDialogPage/components/components/body.dart';
import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:Center( 
          child:Title(
            color: Colors.white, 
            child: Text("ALERT DAILOG PAGE")),),
        backgroundColor: Colors.pink,
      ),
  
        body: 
        Body(),
    );
  }
}