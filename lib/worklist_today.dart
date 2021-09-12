import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_app/models/task.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todolist_app/task_item.dart';
import 'fake_data.dart';
import 'task_item.dart';
class WorklistToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<TaskItem> items =  TASKS.map((eachTask) => TaskItem(description: eachTask.desciption, date: eachTask.date, status: eachTask.status,)).toList();

      return DefaultTabController(length: 2,
          child: Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: Color.fromRGBO(249, 96, 96, 1),
                tooltip: 'Add Transaction',
                child: Icon(Icons.add, ),
                onPressed: (){

                },

              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomAppBar(

                color: Color.fromRGBO(41, 46, 78, 1),

                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:<Widget> [

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.check_circle,color: Colors.white,)
                        ),
                        //Text('My Task'),

                        IconButton(onPressed: (){},
                            icon: Icon(Icons.workspaces_outline,color: Colors.white,)

                        ),
                        //Text('Menu'),


                        IconButton(onPressed: (){},
                            icon: Icon(Icons.task,color: Colors.white,)
                        ),
                        //Text('Quick'),


                        IconButton(onPressed: (){},
                            icon: Icon(Icons.person,color: Colors.white,)
                        ),
                        //Text('Profile'),


                  ],
                ),
              ),
              appBar: AppBar(

                backgroundColor : Color.fromRGBO(249, 96, 96, 1),
                backwardsCompatibility: false,
                bottom: TabBar(
                  tabs: [
                    Text(
                      'Today',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    Text(
                      'Month',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1)),
                    )
                  ],
                  labelPadding: EdgeInsets.only(bottom: 10),
                ),
                title: Container(
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Padding(padding: EdgeInsets.only(left: 35)),
                      Expanded(
                        child: Text('Work List',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ),
                      Image.asset(
                        'assets/photos/Page 1.png',
                      ),
                      Padding(padding: EdgeInsets.only(right: 10,))
                    ],
                  ),
                ),
                automaticallyImplyLeading: false,

              ),

              body: TabBarView(
                children:<Widget> [

                  ListView.separated(
                    padding: EdgeInsets.all(13),
                    itemCount: items.length,
                    itemBuilder: (context,index){
                      var item = items[index];

                      return Slidable(

                          child: Container(
                            //padding: EdgeInsets.all(10),
                            height: 50,
                              child: Center(
                                child: item,
                              )
                          ),
                          actionPane: SlidableDrawerActionPane(),
                          secondaryActions: <Widget>[
                            Container(

                              child: IconSlideAction(


                                icon: Icons.settings,
                                foregroundColor: Color.fromRGBO(249, 96, 96, 1),

                              ),
                            ),
                            IconSlideAction(


                              icon:
                                Icons.delete,
                              foregroundColor: Color.fromRGBO(249, 96, 96, 1),


                            )
                          ]

                      );

                      },
                    separatorBuilder: (BuildContext context, int index) => const Divider(),

                  ),
                  ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context,index){
                      final item = items[index];
                      return Slidable(
                          child: Text(item.toString()),
                          actionPane: SlidableDrawerActionPane());
                    },
                  )
                ],
              )

          )
      );



    }
}
