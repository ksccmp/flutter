import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/bbongflix_logo.png'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: const Text(
                'TaeBbong',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 140,
              height: 5,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Linkify(
                onOpen: (link) async {
                  if (await canLaunch(link.url)) {
                    await launch(link.url);
                  }
                },
                text: 'https://github.com/TaeBbong',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                linkStyle: const TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.edit, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        '프로필 수정하기',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
