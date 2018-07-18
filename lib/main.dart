import 'package:flutter/material.dart';
import 'package:flutter_app/FormDesignDemo.dart';
import 'package:flutter_app/LoginForm.dart';



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
void main() => runApp(new LoginForm());

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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body:
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      new Column(
        children: <Widget>[
          new Expanded(
            child: new Container(
              color: const Color(0xabc12345),
              height:100.0,
              child:new Row(
                children: <Widget>[

                    //new container
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new Container(

                          child: new SizedBox(
                            width: 50.0,
                            //add button
                            child:new RaisedButton(

                                key: null, onPressed:_incrementCounter,
                                color: const Color(0xFFe0e0e0),
                                child:
                                new Text(
                                  "+",
                                  style: new TextStyle(fontSize: 25.0,
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Roboto"),
                                )
                            ),
                            //end here button body
                          )

                      ),
                    ),

                  new Expanded(
                    child:Center(
                      child: new Text(

                        "$_counter",
                        style: new TextStyle(fontSize:37.0,
                            color: const Color(0xFFc62a2a),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      ),
                    ),
                  ),



                     Padding(
                       padding: const EdgeInsets.all(30.0),
                       child: new Container(

                       child: new SizedBox(
                                width: 50.0,
                         //add button
                          child:new RaisedButton(

                              key: null, onPressed: _decrementCounter,
                              color: const Color(0xFFe0e0e0),
                              child:
                              new Text(
                                "-",
                                style: new TextStyle(fontSize: 25.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Roboto"),
                              )
                          ),
                          //end here button body
                        ),
                       ),
                     ),

                ],
              ),

            ),
          ),
          new Expanded(
            child: new Container(

              color: const Color(0xFF00FF00),

              height: 100.0,
            ),
          ),
          new Expanded(
            child:new Image.network(
              'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              fit:BoxFit.fill,
              width: 1000.0,
              height: 1000.0,
            ),
          ),


        ],
      ),


//      drawer: new Drawer(
//        child: new ListView(
//          // Important: Remove any padding from the ListView.
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//            new DrawerHeader(
//              child: new Text('Drawer Header'),
//              decoration: new BoxDecoration(
//                color: Colors.blue,
//              ),
//            ),
//            new ListTile(
//              title: new Text('Home'),
//              onTap: () {
//                // Update the state of the app
//                // ...
//                Navigator.pop(context);
//              },
//            ),
//            new ListTile(
//              title: new Text('Profile'),
//              onTap: () {
//                // Update the state of the app
//                // ...
//              },
//            ),
//          ],
//        ),
//      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
