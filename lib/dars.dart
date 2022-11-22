import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(children: [
          AnimatedPositioned(
            right: active ? MediaQuery.of(context).size.width - 100 : 0,
            bottom: active ? MediaQuery.of(context).size.height - 118 - 100 : 0,
            duration: Duration(milliseconds: 700),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          AnimatedPositioned(
            top: active
                ? MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    150
                : 0,
            right: active ? MediaQuery.of(context).size.width - 100 : 0,
            duration: Duration(milliseconds: 700),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          ),
          AnimatedPositioned(
            left: active ? MediaQuery.of(context).size.width - 100 : 0,
            bottom: active ? MediaQuery.of(context).size.height - 118 - 100 : 0,
            duration: Duration(milliseconds: 700),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          )
        ]),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          active = !active;
        },
        child: Container(
          width: 65,
          height: 64,
          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
