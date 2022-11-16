import 'dart:math';

import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int counter = 0;
  Color color = Colors.black;


  increase() {
    counter++;

    var a = Random().nextInt(255);
    var r = Random().nextInt(255);
    var g = Random().nextInt(255);
    var b = Random().nextInt(255);
    color = Color.fromARGB(a, r, g, b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget"),
        elevation: 5,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text("Counter value...",
                  style: TextStyle(fontSize: 24, color: Colors.red)),
              Text("Value: $counter",
                  style: TextStyle(fontSize: 24, color: color)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increase();
            print(counter);
          });
        },
        child: Icon(Icons.add),
        elevation: 10,
        tooltip: "Increase",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
