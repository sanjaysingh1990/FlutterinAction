import 'package:flutter/material.dart';

//import 'package:validate/validate.dart';
class LoginFormTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';
    return MaterialApp(
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      new
      _LoginPageState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery
        .of(context)
        .size;

    return new Scaffold(

      appBar: new AppBar(
        title: new Text('Login'),
      ),

      body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Form(
            key: this._formKey,
            child: new Column(
              children: <Widget>[
                //user name filed
                new TextFormField(
                  //validate field value
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your email';
                    }
//                      if (!Validate.isEmail(value)) {
//                        return 'The E-mail Address must be a valid email address.';
//                      }

                  },

                  keyboardType: TextInputType.emailAddress,
                  // Use email input type for emails.
                  decoration: new InputDecoration(
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


              ],
            ),
          )
      ),
    );
  }
}