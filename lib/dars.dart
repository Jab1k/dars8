import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  int number = 0;
  bool active = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 700),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: active ? Colors.red : Colors.black),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 700),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: active ? Colors.black : Colors.yellow),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 700),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: active ? Colors.black : Colors.green),
            )
          ],
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
            active = !active;
            setState(() {});
          },
          child: Container(
            width: 64,
            height: 64,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            child: Icon(Icons.select_all),
          ),
        ),
      ),
    );
  }
}
