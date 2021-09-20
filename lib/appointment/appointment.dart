import 'package:calmify_/videocall//call.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined),onPressed: (){Navigator.pop(context);},),
          ),
          body: Column(
            children: [
              Row(children: [
              ],),
            ] ,

          ),
    )
    );
  }

  Future<void> onJoin() async {
    // update input validation
    // await for camera and mic permissions before pushing video page
    await _handleCameraAndMic(Permission.camera);
    await _handleCameraAndMic(Permission.microphone);
    // push video page with given channel name
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPage(),
      ),
    );
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }
}
