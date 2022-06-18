

// ignore_for_file: deprecated_member_use, prefer_const_constructors



import 'package:assignment7/Screens/AlertDialogPage/alert_dialog.dart';
import 'package:assignment7/Screens/AlertDialogPage/components/components/background.dart';
import 'package:assignment7/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';







class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                showDialog(context: context, 
                builder: (context){
                  return CupertinoAlertDialog(
                    title: Text("CUPERTINO DIALOG BOX"),
                    content: Text("Confirm for Continue, or Cancel"),
                    actions: [
                      FlatButton(
                        onPressed: (){
                          showDialog(context: context, 
                builder: (context){
                  return AlertDialog(
                    title: Text("ALERT DIALOGUE"),
                    content: Text("Content, more info"),
                    actions: [
                      FlatButton(
                        onPressed: (){
                          Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> AlertDialogPage()));
                        },
                        child: Text("GO TO PAGE"),)
                    ],
                  );
                });
                        },
                        child: Text("CONFIRM"),),
                        FlatButton(
                        onPressed: (){Navigator.pop(context); },
                        child: Text("CANCEL"),)
                    ],
                  );
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("SHOW DIALOG"),
              ),
              ),
              FlatButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => WelcomeScreen()));
              }, 
              child: Text("Main Menu"))
          ],
        ),
      
      )
      
      );
  }
  
  widget({required FlatButton child}) {}
}

