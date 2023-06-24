import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(''),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'nady mahmoud',
              ),
            ),
            Text('Flutter Developer'),
            Divider(
              height: 40,
              thickness: 3,
              indent: 100,
              endIndent: 100,
            ),
            CardWidget('20 1111-111-111', Icons.phone),
            CardWidget('nady@yahoo.com', Icons.email),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  CardWidget(this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        // color: Colors.white,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
