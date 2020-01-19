import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  Map <String,bool> todo = {
    "Washing Clotches": false,
    "Go To School": false,
    "Cooking Food": false,
  };
  @override
  Widget build(BuildContext context) {
    return ListView(
       children: todo.keys.map( (String key){
        return CheckboxListTile(
          title: Text(key),
          value: todo[key],
          onChanged: (bool value) {
            setState(() {
              todo[key] = value;
            });
          },
        );
      }).toList(),
    );
  }
}