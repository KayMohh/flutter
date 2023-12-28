import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

import '../util/dialogue_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller
  final _controller = TextEditingController();
//list of the todos
  List toDoList = [
    ["Learn Flutter", true],
    ["Eat Dinner", false],
    ["Go to Work", false]
  ];

  void checkBoxChecked(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // save new task

  saveNewTask() {
    // Future.delayed(Durations.extralong1, () {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
      // });
      Navigator.of(context).pop();
    });
  }

  createNewToDo() {
    // Future.delayed(Duration.zero, () {
    showDialog(
      context: context,
      builder: (context) {
        return DialogueBox(
          controller: _controller,
          onSave: saveNewTask(),
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("To Do List"),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewToDo,
        tooltip: "Add a New To Do",
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              taskName: toDoList[index][0],
              taskComplete: toDoList[index][1],
              // onChanged: (value) => checkBoxChecked(value, index));
        },

        // ToDoTile(
        //   taskName: "Tutorial",
        //   taskComplete: true,
        //   onChanged: (p0) {
        //     //do nothing
        //   },
        // ),
        // ToDoTile(
        //   taskName: "Eat and Go Out",
        //   taskComplete: false,
        //   onChanged: (p0) {
        //     //do nothing
        //   },
        // ),
      ),
    );
  }
}
