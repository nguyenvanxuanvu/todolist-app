import 'package:flutter/material.dart';
import 'package:todolist_app/reset_password.dart';
import 'walkthrough_1.dart';
import 'sign_in.dart';
class ForgotPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: Color.fromRGBO(253, 253, 253, 1),


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
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
                icon: Icon(Icons.arrow_back,)),
            Padding(padding: EdgeInsets.only(top: 51,)),
            Text('Forgot Password', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.only(top: 11)),
            Text('Please enter your email below to receive your password reset instructions', style: TextStyle(fontSize: 16,
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

            FlatButton(

              padding: EdgeInsets.only(top: 15,left:120,bottom: 15,right: 125),
              color: Color.fromRGBO(249, 96, 96, 1),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResetPassword()),
                );
              },

              child: Text('Send Request',style: TextStyle(fontSize: 18,color: Colors.white),) ,
            ),
          ],
        ),
      ),
    );
  }
}