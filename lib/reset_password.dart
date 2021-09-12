import 'package:flutter/material.dart';
import 'walkthrough_1.dart';
import 'forgot_password.dart';
import 'successful.dart';
class ResetPassword extends StatelessWidget{
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
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                icon: Icon(Icons.arrow_back,)),
            Padding(padding: EdgeInsets.only(top: 51,)),
            Text('Reset Password', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.only(top: 11)),
            Text('Reset code was sent to your email. Please enter the code and creae new password', style: TextStyle(fontSize: 16,
                color: Color.fromRGBO(155, 155, 155, 1)),),
            Padding(padding: EdgeInsets.only(top: 40)),
            Text('Reset code', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
            Padding(padding: EdgeInsets.only(top: 0)),
            TextField(
              decoration: InputDecoration(

                  hintText: 'Enter your number',
                  hintStyle: TextStyle( color: Colors.grey, fontSize: 14)
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text('New password', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
            Padding(padding: EdgeInsets.only(top: 2)),
            TextField(
              decoration: InputDecoration(

                  hintText: 'Enter your password',
                  hintStyle: TextStyle( color: Colors.grey, fontSize: 14)
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text('Confirm password', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
            Padding(padding: EdgeInsets.only(top: 0)),
            TextField(
              decoration: InputDecoration(

                  hintText: 'Enter your confirm password',
                  hintStyle: TextStyle( color: Colors.grey, fontSize: 14)
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 40)),
            FlatButton(

              padding: EdgeInsets.only(top: 15, right: 100,bottom: 15,left: 115),
              color: Color.fromRGBO(249, 96, 96, 1),
              onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Successful()));
              },
              child: Text('Change password',style: TextStyle(fontSize: 18,color: Colors.white),) ,
            ),
          ],
        ),
      ),
    );
  }
}