import 'package:flutter/material.dart';
import 'package:sample_app/models/todo/todo_entity.dart';
import 'package:uuid/uuid.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var uuid = Uuid();
    var todoList = [
      new TodoEntity(uuid.v1(), 'title 1', 'description 1', true),
      new TodoEntity(uuid.v1(), 'title 2', 'description 2', false),
      new TodoEntity(uuid.v1(), 'title 3', 'description 3', false)
    ];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(
          child: Text('Todo'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context).pushNamed('addTodo')
          )
        ]
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.separated(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoItem(item: todoList[index]);
          },
          separatorBuilder: (BuildContext context, int index) => Divider(
            height: 1,
          ),
        )
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  final TodoEntity item;

  TodoItem({this.item});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(item.title),
      subtitle: Text(item.description),
      value: item.isDone,
      activeColor: Colors.pink,
      checkColor: Colors.white,
      onChanged: (value) => print('value ' + item.id),
    );
  }
}
