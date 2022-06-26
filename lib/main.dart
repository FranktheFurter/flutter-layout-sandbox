// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: Column(
          children: [
            Container(
              child: DummyBottonBar(),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(child: Card(child: Column(children: [Text('MID')]))),
                    Card(
                        child: Column(children: [
                      Row(
                        children: [
                          Card(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("option 1"),
                            ),
                          ),
                          Card(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("option 1"),
                            ),
                          ),
                          Card(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("option 1"),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Sidebardummy(),
                      ),
                    ])),
                  ],
                ),
              ),
            ),
            Container(
              child: DummyBottonBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class DummyBottonBar extends StatelessWidget {
  const DummyBottonBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
        Card(
            child: SizedBox(
          height: 32,
          width: 32,
        )),
      ],
    );
  }
}

class Sidebardummy extends StatelessWidget {
  const Sidebardummy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: 300,
          height: 50,
          child: Center(child: Text('Card')),
        ),
      ],
    ));
  }
}
