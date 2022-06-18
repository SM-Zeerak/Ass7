

// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new





import 'package:assignment7/Screens/TodoApp/components/background.dart';
import 'package:assignment7/Screens/TodoApp/components/models/db_model.dart';
import 'package:assignment7/Screens/TodoApp/components/models/todo_model.dart';
import 'package:assignment7/Screens/TodoApp/components/widget/todo_card.dart';
import 'package:assignment7/Screens/TodoApp/components/widget/todo_list.dart';
import 'package:assignment7/Screens/TodoApp/components/widget/user_input.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
   Body({ Key? key }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

 
  var db = DatabaseConnect();

  void addItem(Todo todo) async{
    await db.insertTodo(todo);
    setState(() {
      
    });
  }

  void deleteItem(Todo todo) async{
    await db.deleteTodo(todo);
    setState(() {
      
    });
  }

  void _updateItem(Todo todo) async {
      await db.updateItem(todo);
    setState(() {
      
    });
    

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Scaffold(
          
      body: Column(
        children: [
          TodoList(
            inserFunction: addItem,
            deleteFunction: deleteItem,
            updateFunction: _updateItem,
          ),
          UserInput(
            insertFunction: addItem,
          ),
          
        ],
      ),
    ));
  }


}

