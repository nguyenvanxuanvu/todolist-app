import 'package:flutter/material.dart';
import 'walkthrough_1.dart';
import 'forgot_password.dart';
import 'successful.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => new _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isHidden = true;

  TextEditingController _resetcodeController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();

  void _toggle() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _keyboardIsVisible() {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Stack(children: [
        Positioned(
          width: size.width,
          height: !_keyboardIsVisible() ? (size.height) : (size.height * 0.35),
          top: !_keyboardIsVisible() ? 0 : -240,
          child: Container(
            child: SizedBox(
                width: double.infinity,
                child: Column(children: <Widget>[

                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                            top: 25,
                          )),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()),
                                );
                              },
                              icon: Icon(
                                Icons.arrow_back,
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                            top: 51,
                          )),
                          Text(
                            'Reset Password',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(top: 11)),
                          Text(
                            'Reset code was sent to your email. Please enter the code and creae new password',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(155, 155, 155, 1)),
                          ),
                          Padding(padding: EdgeInsets.only(top: 70)),
                          Text('Reset code',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          Padding(padding: EdgeInsets.only(top: 0)),
                          Container(
                            child: TextFormField(
                              controller: _resetcodeController,
                              decoration: InputDecoration(
                                  hintText: 'Enter your number',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text('New password',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          Padding(padding: EdgeInsets.only(top: 2)),
                          Container(
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                  hintText: 'Enter your password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text('Confirm password',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          Padding(padding: EdgeInsets.only(top: 0)),
                          Container(
                            child: TextFormField(
                              controller: _confirmpasswordController,
                              decoration: InputDecoration(
                                  hintText: 'Enter your confirm password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 40)),
                          FlatButton(
                            padding: EdgeInsets.only(
                                top: 15, right: 100, bottom: 15, left: 115),
                            color: Color.fromRGBO(249, 96, 96, 1),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Successful()));
                            },
                            child: Text(
                              'Change password',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),

                ])),
          ),
        )
      ]),
    ));
  }
}
