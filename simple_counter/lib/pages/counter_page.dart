import "package:flutter/material.dart";

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //var
  int counter = 0;

  //method
  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  //UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KayMohh's Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("You Pushed the button this number of times:"),
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 50),
          ),

          //button

          ElevatedButton(onPressed: increamentCounter, child: Text("Increase")),
          ElevatedButton(onPressed: resetCounter, child: Text("Reset")),
        ]),
      ),
    );
  }
}
