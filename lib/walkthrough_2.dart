import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyApp.dart';
import 'walkthrough_3.dart';
import 'sign_in.dart';
class Walkthrough2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:

        Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [

              Container(
                padding: EdgeInsets.only(top: 60,),
                child:
                Image.asset('assets/photos/wt2.png',width: 350,

                ),
                //Image.asset('assets/photos/Rectangle-path.png',),


              ),
              Padding(padding: EdgeInsets.only(top: 35)),
              Text('Work Happens', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text('Get notified when work happens.',style: TextStyle( fontSize: 18)),

              Padding(padding: EdgeInsets.only(top: 30)),
              Image.asset('assets/photos/Pagination (1).png',),
              Padding(padding: EdgeInsets.only(top: 30)),
              Expanded(


                  child:
                  Stack(

                    children:<Widget> [
                      Container(
                        width: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(

                          image: DecorationImage(

                            fit: BoxFit.fill,
                            image:  AssetImage("assets/photos/Path 2_2.png",
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:  AssetImage("assets/photos/Path 2 (1)_2.png"),
                          ),
                        ),
                      ),


                      Container(
                          alignment: Alignment.center,
                          //padding: EdgeInsets.only(left: 42, right: 42),
                          child:

                          Column(
                            children:<Widget> [
                              Padding(padding: EdgeInsets.only(top: 80 )),
                              FlatButton(
                                padding: EdgeInsets.only(top: 15, right: 120,bottom: 15,left: 120),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Walkthrough3()),
                                  );
                                },
                                child: Text('Get Started',style: TextStyle(fontSize: 18),) ,
                              ),
                              Padding(padding: EdgeInsets.only(top: 10 )),
                              TextButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignIn()),
                                );
                              }, child: Text('Log In',
                                style: TextStyle(color: Colors.white, fontSize: 18),

                              ),)
                            ],
                          )
                      ),



                    ],
                  )

              )

            ],

          ),
        )
    );
  }
}
