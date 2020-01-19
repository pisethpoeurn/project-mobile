import 'package:flutter/material.dart';
import 'package:project/todo.dart';

class Modal extends StatefulWidget {
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  TextEditingController todoController = TextEditingController();
  createModal (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          title: Text("Todo List"),
          content: TextField(
            autofocus: true,
            controller: todoController,
          ),
          actions: <Widget>[
            MaterialButton(
              child: Text("Add New" ,style: TextStyle(color: Colors.red)),
              onPressed: () => {Navigator.of(context).pop(todoController.text.toString()),
                debugPrint(todoController.text.toString())
              },
            )
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List Project flutter"),
      ),
      body: Todo(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createModal(context),
        child: Icon(Icons.add),
      ),
    );
  }
}