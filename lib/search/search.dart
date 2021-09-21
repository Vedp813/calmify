import 'package:calmify_/appointment/appointment.dart';
import 'package:calmify_/color/color%20const.dart';
import 'package:flutter/material.dart';



class SearchDoctor extends StatelessWidget {

  final buildings=[
    '1','2','3','4','5','6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        elevation: 0,
        title:  Text('Search Doctors',textAlign: TextAlign.center,style: TextStyle(color: primaryColor),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_outlined,color: primaryColor,size: 25,),
        onPressed: (){Navigator.pop(context);}
        ),),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Appointment()));},
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
                    title:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                            Text("Dr. Rajat Saini",style: TextStyle(fontSize: 24,color: primaryColor),),
                            Text("Depression and Psychological Behavior", style: TextStyle(color: Colors.black,fontSize: 14),),
                            Row(children: [
                              Icon(Icons.location_on,size: 10,color: primaryColor,),
                              Text("Chennai",style: TextStyle(color: primaryColor,fontSize: 14),),
                          ],
                        )
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