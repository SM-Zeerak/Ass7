


import 'package:assignment7/Screens/TodoApp/components/models/db_model.dart';
import 'package:assignment7/Screens/TodoApp/components/widget/todo_card.dart';
import 'package:flutter/cupertino.dart';


class TodoList extends StatelessWidget {
  final Function inserFunction;
  final Function deleteFunction;
  final Function updateFunction;
  var db = DatabaseConnect();

   TodoList({
    required this.inserFunction,
    required this.deleteFunction,
    required this.updateFunction,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: db.getTodo(),
        initialData: const [],
        builder: (BuildContext context, AsyncSnapshot<List> snapshot){
          var data = snapshot.data;
          var datalength = data!.length;

          return datalength == 0 ? Center(
            child: Text('no data found'),
          )
          :ListView.builder(
            itemCount: datalength, 
            itemBuilder: (context, i) =>
            TodoCard(
              id: data[i].id, 
              title: data[i].title, 
              creationDate: data[i].creationDate, 
              isChecked: data[i].isChecked, 
              inserFunction: inserFunction, 
              deleteFunction: deleteFunction,
              updateFunction: updateFunction,
              )
              );
              
        },
      ), 
      );
  }
}