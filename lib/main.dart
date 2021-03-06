import 'package:flutter/material.dart';





//void main() => runApp(ListViewLoadMore(items: List<String>.generate(10000, (i) => "Item $i")));

//void main()=>runApp(CustomInfiniteListView(
//  items: List<ListItem>.generate(
//  1000,
//      (i) => i % 6 == 0
//      ? HeadingItem("Heading $i")
//      : MessageItem("Sender $i", "Message body $i"),
//),
//));

//void main()=>runApp(SwipeToDelete(items: List<String>.generate(20, (i) => "Item ${i + 1}")));

//navigate from one screen to another
//void main()=>runApp(MaterialApp(
//  title: 'Navigation Basics',
//  home: FirstScreen(),
//));

//send data from one screen to another screen
//void main() {
//  runApp(MaterialApp(
//    title: 'Passing Data',
//    home: TodosScreen(
//      todos: List.generate(
//        20,
//            (i) => Todo(
//          'Todo $i',
//          'A description of what needs to be done for Todo $i',
//        ),
//      ),
//    ),
//  ));
//}

//navigate to screen and get result from
//void main() {
//  runApp(MaterialApp(
//    title: 'Returning Data',
//    home: HomeScreen(),
//  ));
//}

//route to screen example
//void main() {
//  runApp(MaterialApp(
//    title: 'Named Routes Demo',
//    // Start the app with the "/" named route. In our case, the app will start
//    // on the FirstScreen Widget
//    initialRoute: '/',
//    routes: {
//      // When we navigate to the "/" route, build the FirstScreen Widget
//      '/': (context) => FirstScreen(),
//      // When we navigate to the "/second" route, build the SecondScreen Widget
//      '/second': (context) => SecondScreen(),
//    },
//  ));
//}

//widget animation while navigating
//void main()=>runApp(MaterialApp(
//title: 'Transition Demo',
//home: MainScreen(),
//));

//animation fade in fade out
//void main()=>runApp(new AnimFadeInOut());
//fetch data
//fetch data from server
void main() => runApp(new BottomNavBar());

class MyApp extends StatelessWidget {
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
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
       _counter++;
    });
  }


  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        //set navigation overflow icon
        leading: new IconButton(icon: new Icon(Icons.settings_overscan),
            onPressed: null,
            color: Colors.white),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
        //set toolbar icons
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.surround_sound),
              onPressed: null,
              color: Colors.white),
          new IconButton(
              icon: new Icon(Icons.label), onPressed: null, color: Colors.white)
        ],
      ),
      body:
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      new Column(
        children: <Widget>[
          //first row
          new Expanded(
            child: new Container(
              color: const Color(0xFFFFFFFF),

              //first row
              child:new Row(
                children: <Widget>[
                  //my profile
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFF3393FF),
                        //my profile item
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.person,
                                color: const Color(0xFFFFFFFF),
                                size: 24.0),
                            new Text(
                              "My Profile",
                              style: new TextStyle(fontSize: 12.0,
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],


                        ),


                      ),
                    ),
                  ),
                  //end here

                  //payroll
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFF33FF6E),

                        child: new Column(
                          //center column items
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.payment,
                                color: const Color(0xFFFFFFFF),
                                size: 24.0),
                            new Text(
                              "Payroll",
                              style: new TextStyle(fontSize: 12.0,
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],

                        ),


                      ),
                    ),
                  ),

                  //end here
                ],
              ),

              //end here

            ),
          ),
          //end


          //second row
          new Expanded(
            child: new Container(
              color: const Color(0xFFFFFFFF),

              //first row
              child: new Row(
                children: <Widget>[

                  //my profile
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFFFFE933),

                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.person,
                                color: const Color(0xFFFFFFFF),
                                size: 24.0),
                            new Text(
                              "Leave",
                              style: new TextStyle(fontSize: 12.0,
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],


                        ),


                      ),
                    ),
                  ),
                  //end here

                  //payroll
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFF0E0F0F),

                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.payment,
                                color: const Color(0xFFFFFFFF),
                                size: 24.0),
                            new Text(
                              "Claims",
                              style: new TextStyle(fontSize: 12.0,
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],


                        ),


                      ),
                    ),
                  ),

                  //end here
                ],
              ),


            ),
          ),
          //end


          //third row
          new Expanded(
            child: new Container(
              color: const Color(0xFFFFFFFF),

              child: new Row(
                children: <Widget>[

                  //my profile
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFF920FD4),

                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.timeline,
                                color: const Color(0xFFFFFFFF),
                                size: 21.0),
                            new Text(
                              "OverTime",
                              style: new TextStyle(fontSize: 12.0,
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],


                        ),


                      ),
                    ),
                  ),
                  //end here

                  //payroll
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFFD4450F),

                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.timer,
                                color: const Color(0xFFFFFFFF),
                                size: 24.0),
                            new Text(
                              "TMS",
                              style: new TextStyle(fontSize: 12.0,
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],


                        ),


                      ),
                    ),
                  ),

                  //end here

                ],
              ),


            ),
          ),
          //end

          //Fourth row utilities
          new Expanded(

              child: Container(
                color: const Color(0xFF00FF00),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),


                  child: Center(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                            Icons.person,
                            color: const Color(0xFFFFFFFF),
                            size: 24.0),
                        new Text(
                          "Utilities",
                          style: new TextStyle(fontSize: 12.0,
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto"),
                        ),

                      ],


                    ),
                  ),


                ),
              )


          ),
          //end here
          //to space
          new SizedBox(

            height: 10.0,
          ),

          //text
          new Container(
            alignment: Alignment.topLeft,
            height: 20.0,
            color: const Color(0xFFFFFF33),
            child: new Text("To Do List",
              style: new TextStyle(fontSize: 12.0,

              ),
            ),

          ),

          //Fourth row
          new Expanded(
            child: new Container(
              color: const Color(0xFFFFFF33),


              child: new Row(
                children: <Widget>[


                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFFFFFFFF),

                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            new Icon(
                                Icons.person,
                                color: const Color(0xFFFF4233),
                                size: 24.0),
                            new Text(
                              "Leave Approval",
                              style: new TextStyle(fontSize: 10.0,
                                  color: const Color(0xFFFF4233),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],


                        ),


                      ),
                    ),
                  ),
                  //end here

                  //payroll
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFFFFFFFF),

                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.person,
                                color: const Color(0xFF3FFF33),
                                size: 24.0),
                            new Text(
                              "Claims Approval",
                              style: new TextStyle(fontSize: 10.0,
                                  color: const Color(0xFF3FFF33),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],


                        ),


                      ),
                    ),
                  ),


                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFFFFFFFF),

                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.person,
                                color: const Color(0xFF333CFF),
                                size: 24.0),
                            new Text(
                              "Overtime Approval",
                              style: new TextStyle(fontSize: 10.0,
                                  color: const Color(0xFF333CFF),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                          ],


                        ),


                      ),
                    ),
                  ),


                  //end here
                ],
              ),

              //end here

            ),
          ),
          //end

          //last row

          //bottom row
          new Expanded(
            child: new Container(
              color: const Color(0xFFFFFF),

              //first row
              child: new Row(
                children: <Widget>[

                  //my profile
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),


                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: new Container(
                          color: const Color(0xFFFFFFFF),

                          child: ButtonTheme(
                            shape: RoundedRectangleBorder(),
                            child: new RaisedButton(
                              key: null,
                              onPressed: () {},
                              shape: StadiumBorder(),
                              color: Colors.greenAccent,

                              child:
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  new Icon(
                                      Icons.all_out,
                                      color: const Color(0xFFFFFFFFFF),
                                      size: 24.0),
                                  new Text(
                                    "Clock in",
                                    style: new TextStyle(fontSize: 10.0,
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto"),
                                  ),

                                ],


                              ),
                            ),
                          ),


                        ),
                      ),


                    ),
                  ),
                  //end here

                  //payroll
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: new Container(
                        color: const Color(0xFFFFFFFF),
                        child: ButtonTheme(
                          shape: CircleBorder(),
                          child: new RaisedButton(key: null, onPressed: () {},
                            color: const Color(0xFFB90FD4),
                            child:
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                new Icon(
                                    Icons.email,
                                    color: const Color(0xFFFFFFFF),
                                    size: 16.0),
                              ],


                            ),
                          ),
                        ),


                      ),


                    ),
                  ),


                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: new Container(
                          color: const Color(0xFFFFFFFF),
                          child: ButtonTheme(
                            child: new RaisedButton(
                              key: null,
                              onPressed: () {},
                              shape: StadiumBorder(),
                              color: Colors.orangeAccent,
                              child:
                              //inner item
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  new Icon(
                                      Icons.timer,
                                      color: const Color(0xFFFFFFFF),
                                      size: 24.0),
                                  new Text(
                                    "Clock out",
                                    style: new TextStyle(fontSize: 10.0,
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto"),
                                  ),

                                ],


                              ),
                            ),
                          ),


                        ),
                      ),


                    ),
                  ),


                  //end here
                ],
              ),

              //end here

            ),
          ),
          //end


        ],
      ),




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
  _MyHomePageState2 createState() => new _MyHomePageState2();
}

class _MyHomePageState2 extends State<BottomNavBar> {
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


