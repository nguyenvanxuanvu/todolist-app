import 'package:flutter/material.dart';
import 'worklist_today.dart';
class Successful extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WorklistToday())
            );
          },
          child: Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Column(

              children:<Widget> [
                Padding(padding: EdgeInsets.only(top: 147) ),
                Image.asset('assets/photos/scf.png'),
                Padding(padding: EdgeInsets.only(top: 45) ),
                Text('Succesful!',style: TextStyle(fontSize: 32, color: Color.fromRGBO(49, 49, 49, 1), fontWeight: FontWeight.bold),),
                Padding(padding: EdgeInsets.only(top: 8) ),
                Text('You have succesfully change password.',style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(49, 49, 49, 1),fontWeight: FontWeight.w500),),
                Padding(padding: EdgeInsets.only(top: 2) ),
                Text('Please use your new passwords when',style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(49, 49, 49, 1),fontWeight: FontWeight.w500),),
                Padding(padding: EdgeInsets.only(top: 2) ),
                Text('logging in.',style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(49, 49, 49, 1),fontWeight: FontWeight.w500),),
              ],
            ),
          ),
        )
      ),
    );
  }
}