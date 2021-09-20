import 'package:calmify_/appointment/appointment.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Appointment()));}, icon: Icon(Icons.settings_applications_outlined))
        ],
      ),
      body: Container(
        child: InkWell(
          child: Text("LogOut"),
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
        ),
      ),
    );
  }
}
