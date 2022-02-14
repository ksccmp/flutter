import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: const EdgeInsets.fromLTRB(76, 0, 0, 0),
            child: Center(
              child: Image.asset(
                'images/kurly_logo.png',
                height: 40,
              ),
            ),
          ),
          backgroundColor: const Color(0xff5f0081),
          leading: null,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  IconData(
                    0xf193,
                    fontFamily: 'MaterialIcons',
                  ),
                  color: Colors.white70,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  IconData(
                    0xf37f,
                    fontFamily: 'MaterialIcons',
                  ),
                  color: Colors.white70,
                  size: 30,
                ),
              ),
            )
          ],
          toolbarHeight: 54,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(1),
                      child: const Text(
                        '컬리추천',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      child: const Text(
                        '신상품',
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      child: const Text(
                        '베스트',
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      child: const Text(
                        '알뜰쇼핑',
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      child: const Text(
                        '특가/혜택',
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
