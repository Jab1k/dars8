import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          Row(
            children: [
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/640px-Flag_of_the_United_Kingdom.svg.png'),
                )),
              ),
              Text('English'),
              Icon(Icons.arrow_drop_down_sharp)
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                margin: EdgeInsets.only(top: 40, left: 25),
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cdn.britannica.com/24/189624-050-F3C5BAA9/Mona-Lisa-oil-wood-panel-Leonardo-da.jpg?w=300&h=169&c=crop')),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      'Mona Lisa',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Icon(Icons.location_on),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Text(
                          'United Kingdom',
                          style: TextStyle(color: Colors.black, fontSize: 19),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
