import 'package:flutter/material.dart';
import 'package:todolist_app/walkthrough_3.dart';
import 'walkthrough_1.dart';
import 'forgot_password.dart';
class SignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Padding(padding: EdgeInsets.only(top:50,)),
            IconButton(
                  alignment: Alignment.center,
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Walkthrough3()),
                    );
                  },
                  icon: Icon(Icons.arrow_back,)),

            Padding(padding: EdgeInsets.only(top: 51,)),
            Text('Welcome back', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.only(top: 11)),
            Text('Sign in to continue', style: TextStyle(fontSize: 16,
                color: Color.fromRGBO(155, 155, 155, 1)),),
            Padding(padding: EdgeInsets.only(top: 40)),
            Text('Username', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
            Padding(padding: EdgeInsets.only(top: 2)),
            TextField(
              decoration: InputDecoration(

                hintText: 'Enter your username',
                  hintStyle: TextStyle( color: Colors.grey, fontSize: 14)
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 27)),
            Text('Password', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
            Padding(padding: EdgeInsets.only(top: 2)),
            TextField(
              decoration: InputDecoration(

                  hintText: 'Enter your password',
                  hintStyle: TextStyle( color: Colors.grey, fontSize: 14)
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 12)),
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Text('Forgot password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black),),
              )
            ),
            Padding(padding: EdgeInsets.only(top: 60)),
            FlatButton(

              padding: EdgeInsets.only(top: 15, right: 160,bottom: 15,left: 150),
              color: Color.fromRGBO(249, 96, 96, 1),
              onPressed: () {
                
              },
              child: Text('Log In',style: TextStyle(fontSize: 18,color: Colors.white),) ,
            ),
          ],
        ),
      ),
    );
  }
}