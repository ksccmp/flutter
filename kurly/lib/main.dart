import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurly Clone App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Center(
                child: Text('Home'),
              ),
              Center(
                child: Text('Category'),
              ),
              Center(
                child: Text('Search'),
              ),
              Center(
                child: Text('My Kurly'),
              )
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black12,
                      width: 0.6
                    )
                  )
                ),
                child: const SizedBox(
                height: 50,
                child: TabBar(
                  labelColor: Color(0xff5f0081),
                  unselectedLabelColor: Colors.black54,
                  indicatorColor: Colors.transparent,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(
                        Icons.home,
                        size: 18,
                      ),
                      child: Text(
                        '홈',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.list,
                        size: 18,
                      ),
                      child: Text(
                        '카테고리',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.search,
                        size: 18,
                      ),
                      child: Text(
                        '검색',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.people,
                        size: 18,
                      ),
                      child: Text(
                        '마이컬리',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ),
        ),
      )
    );
  }
}