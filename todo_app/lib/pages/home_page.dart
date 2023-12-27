import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("To Do List"),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Tutorial",
            taskComplete: true,
            onChanged: (p0) {
              //do nothing
            },
          ),
          ToDoTile(
            taskName: "Eat and Go Out",
            taskComplete: false,
            onChanged: (p0) {
              //do nothing
            },
          ),
        ],
      ),
    );
  }
}
