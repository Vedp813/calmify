import 'package:calmify_/booked/booked.dart';
import 'package:calmify_/chat/chat_screen.dart';
import 'package:calmify_/color/color%20const.dart';
import 'package:calmify_/search/search.dart';
import 'package:calmify_/videocall//call.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../nav_bar.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  bool heart = false;
  bool appointment = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  width: width,
                  height: 350,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      image: AssetImage('assets/doctor.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(left: 0,
                  child:
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_outlined),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SearchDoctor()));
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: width,
                  padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                  ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Dr. Rajat Saini",style: TextStyle(fontSize: 24,color: primaryColor),),
                            SizedBox(width: 60,),
                            Icon(Icons.share, size: 20,color: primaryColor,),
                            IconButton(onPressed: (){setState(() {
                              heart = !heart;
                            });}, icon: heart ? Image.asset("assets/heartfilled.png",width: 20,height: 20,) : Image.asset("assets/heart.png",width: 20,height: 20,)),
                          ],
                        )
                      ],
                    ),
                ),)
              ],
            ),
            Container(
                width: width,
                height: MediaQuery.of(context).size.height*0.53,
                padding: EdgeInsets.only(left: 30,right: 20,top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      Text("Depression and Psychological Behavior", style: TextStyle(color: Colors.black,fontSize: 14),),
                    Row(children: [
                      Icon(Icons.location_on,size: 10,color: primaryColor,),
                      Text("Chennai",style: TextStyle(color: primaryColor,fontSize: 14),),
                    ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                        height: 50,
                        width: 90,
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: containerColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            Text('Patients',style: TextStyle(color: primaryColor,fontSize: 14),),
                            Text('200+',style: TextStyle(color: primaryColor,fontSize: 16),),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            Text('Rating',style: TextStyle(color: primaryColor,fontSize: 14),),
                            Text('4.5',style: TextStyle(color: primaryColor,fontSize: 16),),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            Text('Experience',style: TextStyle(color: primaryColor,fontSize: 14),),
                            Text('2 yrs',style: TextStyle(color: primaryColor,fontSize: 16),),
                          ],
                        ),
                      ),
                    ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color:primaryColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: IconButton(icon:Icon(Icons.phone,size: 22,color: Colors.white,),
                            onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NavBar()));
                                buildings.add(2);
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: IconButton(icon:Icon(Icons.message,size: 22,color: Colors.white,),
                          onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                          },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    ));
  }
}
