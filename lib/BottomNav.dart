import 'package:flutter/material.dart';



class BottomBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new BottomNavBar(title: 'Flutter Demo Home Page'),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavBar> {
  int _counter = 0;
  int _index = 0;
  Widget _selectedScreen;
  var _color;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedScreen = getPage(0);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
        backgroundColor: _color,
      ),
      body: _selectedScreen,
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        backgroundColor: _color,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _index,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
              backgroundColor: Colors.amber),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_cart),
              title: new Text("Shopping"),
              backgroundColor: Colors.teal),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.hotel),
              title: new Text("Hotel"),
              backgroundColor: Colors.deepOrange),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.event),
              title: new Text("Event"),
              backgroundColor: Colors.green),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
            _selectedScreen = getPage(index);
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  getPage(int index) {
    Widget widget;

    switch (index) {
      case 0:
        widget = getHome();
        break;
      case 1:
        widget = getShop();
        break;
      case 2:
        widget = getHotel();
        break;
      case 3:
        widget = getEvent();
        break;
    }

    return widget;
  }

  getHome() {
    _color=Colors.amber;
    return new Center(
      child: new Text(
        "HOME",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }

  getShop() {
    _color=Colors.teal;
    return new Center(
      child: new Text(
        "SHOP",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }

  getHotel() {
    _color=Colors.deepOrange;
    return new Center(
      child: new Text(
        "HOTEL",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }

  getEvent() {
    _color=Colors.green;
    return new Center(
      child: new Text(
        "EVENT",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }
}
