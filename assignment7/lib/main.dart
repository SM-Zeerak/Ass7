


// ignore_for_file: prefer_const_constructors

import 'package:assignment7/Screens/TodoApp/components/models/db_model.dart';
import 'package:assignment7/Screens/TodoApp/components/models/todo_model.dart';
import 'package:assignment7/Screens/Welcome/welcome_screen.dart';
import 'package:assignment7/constant.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var db = DatabaseConnect();

  await db.insertTodo(Todo(id: 1,
  title: 'this is the sample todo', 
  creationDate: DateTime.now(), 
  isChecked: false));
  print(await db.getTodo());
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}

