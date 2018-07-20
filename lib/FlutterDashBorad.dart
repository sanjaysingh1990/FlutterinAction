import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
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
              child: new Row(
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
