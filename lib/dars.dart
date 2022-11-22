import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  int number = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Text(
          'Son : $number',
          style: TextStyle(fontSize: 35),
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
               onTap: () {
            number++;
            setState(() {});
          },
              child: Container(
                width: 64,
                height: 64,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                child: Icon(Icons.add),
              ),
            ),
            GestureDetector(
               onTap: () {
            number=0;
            setState(() {});
          },
              child: Container(
                width: 64,
                height: 64,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                child: Icon(Icons.exposure_minus_2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
