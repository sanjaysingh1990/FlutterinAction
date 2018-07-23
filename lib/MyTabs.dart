import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  int _index = 0;
  Widget _selectedScreen;
  var _color;
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
    _color = Colors.amber;
  }


  // The AppBar's action needs this key to find its own Scaffold.
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false, //hide debug label from app
      home: Scaffold(
          key: _scaffoldKey,
          appBar: new AppBar(
            title: new Text("Travel Buddy"), //add title

            bottom: new TabBar(tabs: [ //add tab bar bottom of
              //infographci tab
              new Tab(child: getColumn(
                  "INFOGRAPHIC", Icon(Icons.nature, size: 24.0))
              ),
              new Tab(child: getColumn(
                  "CONTACTS", Icon(Icons.contacts, size: 24.0))),
              new Tab(child: getColumn(
                  "MY FEED", Icon(Icons.rss_feed, size: 24.0))),

            ], controller: _controller), // for tabs controll
          ),
          //show layout for each tab
          // add swipe effectg
          body: new TabBarView(children: [
            getHome(),
            getContacts(),
            getHotel()

          ], controller: _controller, physics: BouncingScrollPhysics(),)
      ),
    );
  }

  /**
   ************ get tab bar item with name and icon ******************
   */
  Widget getColumn(String title, Icon icon) {
    return new Column(
      children: <Widget>[
        icon,
        new Text(title)
      ],
    );
  }

  getHome() {
    _color = Colors.amber;
    return new ListView(
      children: <Widget>[
        getCardWithIMage(),
        getCardWithIMage(),
        getCardWithIMage(),
        getCardWithIMage(),
        getCardWithIMage(),
        getCardWithIMage()

      ],
    );
  }


  getContacts() {
    _color = Colors.teal;
    return addListBuilder();
  }

  Widget addListBuilder()
  {
   return ListView.builder(
      // Let the ListView know how many items it needs to build
      itemCount: kContacts.length,
      // Provide a builder function. This is where the magic happens! We'll
      // convert each item into a Widget based on the type of item it is.
      itemBuilder: (context, index) {
        final contact = kContacts[index];

        return getContactCard(contact.fullName,contact.email);

      },
    );

  }

  getHotel() {
    _color = Colors.deepOrange;
    return new Center(
      child: new Text(
        "HOTEL",
        style: new TextStyle(fontSize: 24.0, color: _color),
      ),
    );
  }

  /**
   *********** get list item with two buttons
   ****** buy tickets and listen
   ******* each button shows dialog in click on ******
   */
  Widget getContactCard(String name, String email) {
    return new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           ListTile(
            leading: const Icon(Icons.supervised_user_circle, size: 60.0,),
            title:    Text(name),
            subtitle: Text(
                email),
          ),
          new ButtonTheme
              .bar( // make buttons use the appropriate styles for cards
            child: new ButtonBar(
              children: <Widget>[
                new FlatButton(
                  child: const Text('Edit'),
                  onPressed: () {
                    //move to edit screen
                  },
                ),
                new FlatButton(
                  child: const Text('Delete'),
                  onPressed: () {
                    //show alert dialog on click
                    showDialog(
                        context: _scaffoldKey.currentState.context,
                        child: getAlertDialog(
                            "Are you sure want to delete this contact?")
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /**
   *
   **************** show alert dialog ***************
   */
  Widget getAlertDialog(String message) {
    return new AlertDialog(
      title: new Text("Warning!"),
      actions: <Widget>[
        new FlatButton(
          child: const Text('OK'),
          onPressed: () {
            dismissDialog();
          },
        ),
        new FlatButton(
          child: const Text('CANCEL'),
          onPressed: () {
            dismissDialog();
          },
        ),
      ],
      content: new Text(message),
    );
  }

  /**
   ************** dismiss dialog *************
   */
  void dismissDialog() {
    Navigator.pop(_scaffoldKey.currentState.context);
  }

  Widget getCardWithIMage() {
    return new Card(
      child: new Column(

        children: <Widget>[


            new Image.network(
              'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              fit: BoxFit.fill,
            ),

          const ListTile(
            leading: const Icon(Icons.supervised_user_circle,size: 60.0,),
            title: const Text('Manali Tour'),
            subtitle: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                    ' Ut enim ad minim veniam,'
                    ''),
          ),
          new ButtonTheme
              .bar( // make buttons use the appropriate styles for cards
            child: new ButtonBar(
              children: <Widget>[
                new FlatButton(
                  child: const Text('Follow Tour'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                new FlatButton(
                  child: const Text('Comment'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
//create list model

class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}

const kContacts = const <Contact>[
  const Contact(
      fullName: 'Romain Hoogmoed',
      email: 'romain.hoogmoed@example.com'
  ),
  const Contact(
      fullName: 'Emilie Olsen',
      email: 'emilie.olsen@example.com'
  )
  
];



