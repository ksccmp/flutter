import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/home_screen.dart';
import 'package:netflix_clone/screen/more_screen.dart';
import 'package:netflix_clone/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'netflix clone',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(), children: <Widget>[
              HomeScreen(),
              Container(
                child: const Center(
                  child: Text('search'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('save'),
                ),
              ),
              MoreScreen()
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}