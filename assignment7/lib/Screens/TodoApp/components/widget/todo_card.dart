



import 'package:assignment7/Screens/TodoApp/components/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TodoCard extends StatefulWidget {

  final int id;
  final String title;
  final DateTime creationDate;
  bool isChecked;
  final Function inserFunction;
  final Function deleteFunction;
  final Function updateFunction;
   TodoCard({ 
   required this.id,
   required this.title,
   required this.creationDate,
   required this.isChecked,
   required this.inserFunction,
   required this.deleteFunction,
   required this.updateFunction,
   
    Key? key}) : super(key: key);

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
 final TextEditingController _textEditingController = new TextEditingController();
    var anotherTodo = Todo(
      id: widget.id, 
      title: widget.title, 
      creationDate: widget.creationDate, 
      isChecked: widget.isChecked, 
      );

    return Card(
      child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal:15 ,vertical: 10),
              
            ),
            
            Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    widget.creationDate.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF8F8F8F)
                  ),
                  ),
                ],
              ),
            ),

            IconButton(onPressed: (){
              widget.deleteFunction(anotherTodo);
            },
             icon: Icon(Icons.close)),

             IconButton(onPressed: (){
              var alert = new AlertDialog(
      title: new Text("Update Task"),
      content: Row(
        children: <Widget>[
          new Expanded(
            child: new TextField(
              controller: _textEditingController,
              autofocus: true,

              decoration: new InputDecoration(
                labelText: "Task",
                hintText: "eg. Something",
                icon: new Icon(Icons.update)
              ),
            ),
          )
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () async {
            widget.updateFunction();
           
          },
          child: new Text("Update"),
        ),
        new FlatButton(onPressed: () => Navigator.pop(context),
            child: new Text("Cancel",
            style: new TextStyle(color: Colors.redAccent),
            ),
        )
      ],
    );
    showDialog(context: context, builder: (_) {

      return alert;

    });
            },
             icon: Icon(Icons.update))
          ],
      ),
    );
    
  }
}