import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(
          child: Text('Add todo'),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () => print('here'),
            child: Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w300
              ),
            )
          )
        ],
      ),
      body: AddTodoLayout(),
    );
  }
}

class AddTodoLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Title', hintStyle: TextStyle(fontSize: 32),
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextField(),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
            )
          ),
        ],
      )
    );
  }
}
