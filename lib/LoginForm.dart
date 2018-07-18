import 'package:flutter/material.dart';

void main() {
  runApp(new LoginForm());
}

class LoginForm extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'New contact'),
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
  bool checkboxValueMath = false;
  bool checkboxValuePhy = false;
  bool checkboxValueEng = false;
  double sliderValue = 0.0;
  int age=0;

  int _radioValue = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.save), onPressed: () {})
        ],
      ),
      body:

      new Builder(
        // Create an inner BuildContext so that the onPressed methods
        // can refer to the Scaffold with Scaffold.of().
        builder: (BuildContext context) {
          return new Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(

              child: new Form(
                key: _formKey,

                child: new Column(
                  children: <Widget>[

                    //first name
                    new TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your first name';
                        }
                      },

                      keyboardType: TextInputType.text,
                      // Use email input type for emails.
                      decoration: new InputDecoration(
                        hintText: 'First Name',
                        labelText: 'First Name',
                        //decorate with border
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        )
                        ,
                        //manage box style
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 8.0),
                        //style font and size
                      ),
                      //style font
                      style: new TextStyle(
                          fontSize: 12.0,
                          height: 1.0,
                          color: Colors.black
                      ),

                    ),
                    //end here

                    //space box
                    const SizedBox(height: 24.0),


                    //user Last Name
                    new TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your last name';
                        }
                      },

                      keyboardType: TextInputType.text,
                      // Use email input type for emails.
                      decoration: new InputDecoration(
                        hintText: 'Last Name',
                        labelText: 'Last Name',
                        //decorate with border
                        border: new OutlineInputBorder(
                          borderRadius
                              : new BorderRadius.circular(5.0),
                        ),
                        //manage box style
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 8.0),
                        //style font and size
                      ),
                      //style font
                      style: new TextStyle(
                          fontSize: 12.0,
                          height: 1.0,
                          color: Colors.black
                      ),

                    ),

                    //end here


                    //space box
                    const SizedBox(height: 24.0),


                    //user password
                    new TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your password';
                        }
                      },

                      keyboardType: TextInputType.text,
                      obscureText: true,
                      // Use email input type for emails.
                      decoration: new InputDecoration(
                        hintText: '*************',
                        labelText:
                        'Password',
                        //decorate with border
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        //manage box style
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 8.0),
                        //style font and size
                      ),
                      //style font
                      style: new TextStyle(
                          fontSize: 12.0,
                          height: 1.0,
                          color: Colors.black
                      ),

                    ),

                    //end here


                    //space box
                    const SizedBox(height: 24.0),


                    //user email address
                    new TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your email address';
                        }
                      },

                      keyboardType: TextInputType.emailAddress,
                      // Use email input type for emails.
                      decoration: new
                      InputDecoration(
                        hintText: 'you@example.com',
                        labelText: 'E-mail Address',
                        //decorate with border
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        //manage box style
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 8.0),
                        //style font and size
                      ),
                      //style font
                      style: new TextStyle(
                          fontSize: 12.0,
                          height: 1.0,
                          color: Colors.black
                      ),

                    ),

                    //end here

                    //space box
                    const SizedBox(height: 24.0),


                    //user phone
                    new TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your Phone number';
                        }
                      }
                      ,

                      keyboardType: TextInputType.phone,
                      // Use email input type for emails.
                      decoration: new InputDecoration(
                        hintText: '94xxxxxxxxxx',
                        labelText: 'Phone Number',
                        //decorate with border
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        //manage box style
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 8.0),
                        //style font and size
                      ),
                      //style font
                      style: new TextStyle(
                          fontSize: 12.0,
                          height: 1.0,
                          color: Colors.black
                      ),

                    ),

                    //end here

                    //space box
                    const SizedBox(height: 24.0),

                    //check box for subject selection
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0.0, 5.0),
                      child: new Row(

                        children: <Widget>[
                          new Text('Subject'),
                        ],
                      ),
                    ),

                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        new Checkbox(
                          value: checkboxValueMath,
                          onChanged: (bool value) {
                            setState(() {
                              checkboxValueMath = value;
                            });
                          },
                        ),
                        new Text("Math"),
                        new Checkbox(
                          value: checkboxValueEng,
                          onChanged: (bool value) {
                            setState(() {
                              checkboxValueEng = value;
                            });
                          },
                        ),
                        new Text("English"),

                        new Checkbox(
                          value: checkboxValuePhy,
                          onChanged: (bool value) {
                            setState(() {
                              checkboxValuePhy = value;
                            });
                          },
                        ),
                        new Text("Physics")

                      ],
                    ),
                    //end here

//                   //gender section
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0.0, 5.0),
                      child: new Row(

                        children: <Widget>[
                          new Text('Gender'),
                        ],
                      ),
                    ),
//

                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: 0,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange,
                        ),
                        new Text('Male'),
                        new Radio(
                          value: 1,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange,
                        ),
                        new Text('Female'),

                      ],
                    ),

                    //end here
                    //slider
                    new Slider(
                      value: age.toDouble(),
                      min: 1.0,
                      max: 50.0,
                      divisions: 50,
                      label: '$sliderValue',
                      onChanged: (double newValue) {
                        setState(() {
                          age = newValue.round();
                        });
                      },
                    ),  //for slider min and max values
                    new Text("$sliderValue"),

                    //end here

                    //space box
                    const SizedBox(height: 30.0),

                    //submit button

                    new Row(
                      children: <Widget>[
                        Expanded(
                          child: new RaisedButton(
                              shape: Border.all(color: Colors.orange),
                              splashColor: Colors.blueAccent,
                              key: null,
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  // If the form is valid, we want to show a Snackbar
                                  Scaffold
                                      .of(context)
                                      .showSnackBar(
                                      SnackBar(
                                          content: Text('Processing Data')));
                                }
                              }
                              ,
                              color: const Color(0xFFe0e0e0),
                              child
                                  :
                              new Text(
                                "SUBMIT",
                                style:
                                new TextStyle(fontSize: 12.0,
                                    color: const
                                    Color(0xFF000000),
                                    fontWeight: FontWeight.w200
                                    ,
                                    fontFamily: "Roboto"),
                              )
                          ),

                        )
                      ],
                    ),


                    //end here


                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void submit() {


  }
  void sliderChanged(double value) {
    setState(() {
      sliderValue = value;

    });

  }


  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

    });
  }


  void checkChanged(bool value) {}




}
