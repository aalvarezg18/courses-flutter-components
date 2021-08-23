import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.ecured.cu/images/c/c8/E4b5f4609bf33e00bcfb6665b81a0b26.jpg'),
                  radius: 25.0),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.purple[900],
              ),
            )
          ],
        ),
        body: Center(
            child: FadeInImage(
          image: NetworkImage(
              'https://blog.activision.com/content/dam/atvi/activision/atvi-touchui/blog/callofduty/feature/M-SHADOWS-TOUT.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )));
  }
}
