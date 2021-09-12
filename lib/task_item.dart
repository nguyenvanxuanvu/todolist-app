import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'worklist_today.dart';
import 'package:todolist_app/models/task.dart';
class TaskItem extends StatelessWidget{
  String? description;
  String? date;
  String? status;
  TaskItem({this.description,this.date, this.status});
  @override
  Widget build(BuildContext context) {
    var icon = (this.status == 'Not') ? Icon(Icons.blur_circular,color: Color.fromRGBO(249, 96, 96, 1),) : Icon(Icons.check_circle,color: Color.fromRGBO(249, 96, 96, 1),);
    var cl = (this.status == 'Not') ? Color.fromRGBO(96, 116, 249, 1) : Color.fromRGBO(249, 96, 96, 1)  ;
    var textdecorate = (this.status == 'Done') ? TextDecoration.lineThrough : TextDecoration.none ;
    // TODO: implement build
    return Container(

      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        boxShadow:  [BoxShadow(blurRadius: 20,color: Color.fromRGBO(224, 224, 224, 0.5),offset: Offset(1,3))],
      ),
        padding: EdgeInsets.only(left: 25,right: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          icon,
          Padding(padding: EdgeInsets.only(right: 20)),
          Center(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [

                Text('${this.description}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,decoration: textdecorate ),),


                  Text('9:00am',style :TextStyle( decoration: textdecorate) ),

              ],
            ),
          ),
          Expanded(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:<Widget> [
                  Image.asset('assets/photos/Rectangle 2.png',color:  cl,)
                ],
              )
          ),



        ],
      ),
    );
  }
}