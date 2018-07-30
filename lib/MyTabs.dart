//import 'package:flutter/material.dart';
//
//class MyTabs extends StatefulWidget {
//  @override
//  _MyTabsState createState() => _MyTabsState();
//}
//
//class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
//
//  int _index =0 ;
//  Widget _selectedScreen;
//  var _color;
//  TabController _controller;
//
//  @override
//  void initState() {
//// TODO: implement initState
//    super.initState();
//    _controller = new TabController(length: 3, vsync: this);
//    _color = Colors.amber;
//  }
//
//
//// The AppBar's action needs this key to find its own Scaffold.
//  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      debugShowCheckedModeBanner: false, //hide debug label from app
//      home: Scaffold(
//          key: _scaffoldKey,
//          appBar: new AppBar(
//            title: new Text("Travel Buddy"), //add title
//
//            bottom: new TabBar(tabs: [ //add tab bar bottom of
//              //infographic tab
//              new Tab(child: getColumn(
//                  "INFOGRAPHIC", Icon(Icons.nature, size: 24.0))
//              ),
//
//              //contacts tab
//              new Tab(child: getColumn(
//                  "CONTACTS", Icon(Icons.contacts, size: 24.0))),
//
//              //my feed
//              new Tab(child: getColumn(
//                  "MY FEED", Icon(Icons.rss_feed, size: 24.0))),
//
//            ], controller: _controller), // for tabs controll
//          ),
////show layout for each tab
//          // add swipe effectg
//          body: new TabBarView(children: [
//            getHome(),
//            getContacts(),
//            getHotel()
//
//          ], controller: _controller, physics: BouncingScrollPhysics(),)
//      ),
//    );
//  }
//
//  /**
//   ************ get tab bar item with name and icon ******************
//   */
//  Widget getColumn(String title, Icon icon) {
//    return new Column(
//      children: <Widget>[
//        icon,
//        new Text(title)
//      ],
//    );
//  }
//
//  getHome() {
//    _color = Colors.amber;
//    return new ListView(
//      children: <Widget>[
//        getCardWithIMage(),
//        getCardWithIMage(),
//        getCardWithIMage(),
//        getCardWithIMage(),
//        getCardWithIMage(),
//        getCardWithIMage()
//      ],
//    );
//  }
//
//
//  getContacts() {
//    _color = Colors.teal;
//    return addListBuilder();
//  }
//
//  Widget addListBuilder()
//  {
//    return ListView.builder(
//// Let the ListView know how many items it needs to build
//      itemCount: kContacts.length,
//// Provide a builder function. This is where the magic happens! We'll
//      // convert each item into a Widget based on the type of item it is.
//      itemBuilder: (context, index) {
//        final contact = kContacts[index];
//
//        return getContactCard(contact.fullName,contact.email,contact.profilePic);
//
//      },
//    );
//
//  }
//
//  getHotel() {
//    _color = Colors.deepOrange;
//    return new Center(
//      child: new Text(
//        "HOTEL",
//        style: new TextStyle(fontSize: 24.0, color: _color),
//      ),
//    );
//  }
//
//  /**
//   *********** get list item with two buttons
//   ****** buy tickets and listen
//   ******* each button shows dialog in click on ******
//   */
//  Widget getContactCard(String name, String email,String profilePic) {
//    return new Card(
//      child: new Column(
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
//          ListTile(
//            leading: getCircularImage(profilePic),
//            title:    getCustomUserName(name),
//            subtitle: Text(
//                email),
//          ),
//          new ButtonTheme
//              .bar( // make buttons use the appropriate styles for cards
//            child: new ButtonBar(
//              children: <Widget>[
//                new FlatButton(
//                  child: const Text('Edit'),
//                  onPressed: () {
////move to edit screen
//                  },
//                ),
//                new FlatButton(
//                  child: const Text('Delete'),
//                  onPressed: () {
////show alert dialog on click
//                    showDialog(
//                        context: _scaffoldKey.currentState.context,
//                        child: getAlertDialog(
//                            "Are you sure want to delete this contact?")
//                    );
//                  },
//                ),
//              ],
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//
//  Widget getCustomUserName(String name)
//  {
//    return new Text(
//      "$name",
//      style: new TextStyle(fontSize:17.0,
//          color: const Color(0xFF1a1919),
//          fontWeight: FontWeight.w600,
//          fontFamily: "Roboto"),
//    );
//  }
//
//  Widget getCircularImage(String url)
//  {
//    return new Container(
//        width: 60.0,
//        height: 60.0,
//        decoration: new BoxDecoration(
//            shape: BoxShape.circle,
//            image: new DecorationImage(
//                fit: BoxFit.fill,
//                image: new NetworkImage(
//                    url)
//            )
//        ));
//  }
//
//  /**
//   *
//   **************** show alert dialog ***************
//   */
//  Widget getAlertDialog(String message) {
//    return new AlertDialog(
//      title: new Text("Warning!"),
//      actions: <Widget>[
//        new FlatButton(
//          child: const Text('OK'),
//          onPressed: () {
//            dismissDialog();
//          },
//        ),
//        new FlatButton(
//          child: const Text('CANCEL'),
//          onPressed: () {
//            dismissDialog();
//          },
//        ),
//      ],
//      content: new Text(message),
//    );
//  }
//
//  /**
//   ************** dismiss dialog *************
//   */
//  void dismissDialog() {
//    Navigator.pop(_scaffoldKey.currentState.context);
//  }
//
//  Widget getCardWithIMage() {
//    return new Card(
//      child: new Column(
//
//        children: <Widget>[
//
//
//          new Image.network(
//            'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
//            fit: BoxFit.fill,
//          ),
//
//          const ListTile(
//            leading: const Icon(Icons.supervised_user_circle,size: 60.0,),
//            title: const Text('Manali Tour'),
//            subtitle: const Text(
//                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
//                    'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
//                    ' Ut enim ad minim veniam,'
//                    ''),
//          ),
//          new ButtonTheme
//              .bar( // make buttons use the appropriate styles for cards
//            child: new ButtonBar(
//              children: <Widget>[
//                new FlatButton(
//                  child: const Text('Follow Tour'),
//                  onPressed: () {
///* ... */
//                  },
//                ),
//                new FlatButton(
//                  child: const Text('Comment'),
//                  onPressed: () {
///* ... */
//                  },
//                ),
//              ],
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//
//}
////create list model
//
//class Contact {
//  final String fullName;
//  final String email;
//  final String profilePic;
//
//  const Contact({this.fullName, this.email,this.profilePic});
//}
//const String placeHoler="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqXLAA-wUTJLSMQf7fHgFq9_b4ye4CWXL8wZnaEqm-GjHuqcq0zQ";
//const kContacts = const <Contact>[
//  const Contact(
//      fullName: 'Romain Hoogmoed',
//      email: 'romain.hoogmoed@example.com',
//      profilePic: "https://i.pinimg.com/originals/a5/1d/0d/a51d0ddc540aca62ed765049bf1b8e6d.jpg"
//  ),
//  const Contact(
//      fullName: 'Emilie Olsen',
//      email: 'emilie.olsen@example.com',
//      profilePic: "https://i.pinimg.com/474x/0b/a5/90/0ba59042f08e3a8d21a1289205bf05f5--tim-obrien-singer.jpg"
//  ),
//  const Contact(
//      fullName: 'Emilie Olsen',
//      email: 'doormat@aol.com',
//      profilePic: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ1drDWQmWPtmmRhQQDXSmP5GuL1donmeTVcX4uV6Owd6QlxP7lA"
//  ),
//
//  const Contact(
//      fullName: 'Conteb',
//      email: 'conteb@gmail.com',
//      profilePic: placeHoler
//
//  ),
//
//  const Contact(
//      fullName: 'Matsn',
//      email: 'matsn@live.com',
//      profilePic: placeHoler
//  ),
//
//  const Contact(
//      fullName: 'Emilie Olsen',
//      email: 'matsn@live.com',
//      profilePic: placeHoler
//  )
//  ,
//  const Contact(
//      fullName: 'Evans',
//      email: 'evans@me.com',
//      profilePic: placeHoler
//  ),
//
//  const Contact(
//      fullName: 'Frosal',
//      email: 'frosal@aol.com',
//      profilePic: placeHoler
//  ),
//  const Contact(
//      fullName: 'Daveed',
//      email: 'daveed@gmail.com',
//      profilePic: placeHoler
//  )
//
//
//];
//
