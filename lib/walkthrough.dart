import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'MyApp.dart';
import 'walkthrough_1.dart';
class Walkthrough extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
    Scaffold(

      body: Center(

        child: InkWell(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Walkthrough1())
            );
          },
          child: Column(

            children:<Widget> [

              Padding(padding: EdgeInsets.only(top: 249)),
              Image.asset('assets/photos/Fill 1.png', width: 153,height: 153,),
              Padding(padding: EdgeInsets.only(top: 10)),
              Image.asset('assets/photos/aking.png', height: 50,),

            ],
          ),
        ),

      ),

    );
  }
}