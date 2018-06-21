import 'package:flutter/material.dart';
void main() => runApp(new Drawer());

class Drawer extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
    //  home: MyHomePage(title: appTitle),
    );
  }
}


