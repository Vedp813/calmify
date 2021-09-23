import 'package:calmify_/appointment/appointment.dart';
import 'package:calmify_/color/color%20const.dart';
import 'package:calmify_/nav_bar.dart';
import 'package:calmify_/videocall/call.dart';
import 'package:flutter/material.dart';
List buildings = [1];
class Booked extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Appointments',
          textAlign: TextAlign.center,
          style: TextStyle(color: primaryColor),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Color(0xff003C8F),
          size: 25,
        ),
            onPressed: () {
              Navigator.pop(context);
            }
            ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Appointment()));
          },
          child: Container(
            height: 120,
            color: Colors.grey[100],
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/doctor.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dr. Rajat Saini",
                          style: TextStyle(fontSize: 24, color: primaryColor),
                        ),
                        FlatButton(
                          onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CallPage()));},
                          child: Text(
                            "Join",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ),
                          color: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    ),
                    Text(
                      "Depression and Psychological Behavior",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Row(
                      children: [
                          Image(image: AssetImage("assets/calendar.png"),width: 20,height: 20,),
                        SizedBox(width: 8,),
                          Text(
                            "23 Sept 2021",
                            style: TextStyle(color: primaryColor, fontSize: 14),
                          ),
                          SizedBox(width: 40,),
                          Image(image: AssetImage("assets/clock.png"),width: 20,height: 20,),
                        SizedBox(width: 8,),
                          Text(
                            "10:24 pm",
                            style: TextStyle(color: primaryColor, fontSize: 14),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        itemCount: buildings.length,
      ),
    );
  }
}
