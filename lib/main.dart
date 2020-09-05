import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.teal),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigation menu',
                onPressed: null),
            Expanded(
              child: title,
            ),
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
              child: Center(
            child: Text('Hello, world'),
          )),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: MyScaffold(),
  ));
}
