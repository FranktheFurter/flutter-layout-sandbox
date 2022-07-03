// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:layout_test/mainstate.dart';

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
        body: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Layout 1',
                  ),
                  Tab(
                    text: 'Layout 2',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  Layout1(),
                  OverlayTest(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OverlayTest extends StatefulWidget {
  const OverlayTest({Key? key}) : super(key: key);

  @override
  State<OverlayTest> createState() => _OverlayTestState();
}

class _OverlayTestState extends State<OverlayTest> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Stack(
        children: [
          Stack1(),
          if (mainState.isLayoutActive)
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: InkWell(
                        onTap: () => mainState.isLayoutActive = false,
                        child: Container(),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Sidebardummy(),
                    ),
                  ],
                )),
        ],
      );
    });
  }
}

class Stack1 extends StatelessWidget {
  const Stack1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("data")],
        ),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("data")],
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () => mainState.isLayoutActive = true,
              child: Text("Tap me"),
            )
          ],
        ),
      ],
    );
  }
}

class Layout1 extends StatelessWidget {
  const Layout1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("option 1"),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("option 1"),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
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
          height: 16,
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
  Sidebardummy({
    Key? key,
  }) : super(key: key);
  double width = 120;
  double height = 300;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
        Container(
          width: width,
          height: height,
          child: Center(child: Text('Card')),
        ),
      ],
    ));
  }
}
