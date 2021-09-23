import 'package:calmify_/appointment/appointment.dart';
import 'package:calmify_/chat/chat_screen.dart';
import 'package:calmify_/color/color%20const.dart';
import '../custome_dialogbox.dart';
import '../motivation_page.dart';
import '../search/search.dart';
import 'package:calmify_/videocall/call.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:calmify_/database/database.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
          future: DataBaseService().getUserName(),
          builder: (_, AsyncSnapshot snapshot) {
            String username = snapshot.data;
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container(
                color: Colors.white,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return SafeArea(
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/logo.png',
                              width: MediaQuery.of(context).size.width * 0.45,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            Text(
                              'Hello, $username!',
                              style: TextStyle(
                                color: Color(0xff054195),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                showDialog(
                                  context: context,
                                  builder: (context) => CustomDialogBox(
                                    title: 'Sign Out ?',
                                    contentText: '',
                                    action1Text: 'Yes',
                                    action2Text: 'No',
                                    action1onPressed: () {
                                      Navigator.of(context).pop();
                                     FirebaseAuth.instance.signOut();
                                    },
                                    action2onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                );
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xff054195),
                                backgroundImage: AssetImage('assets/user.png'),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.025,
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Image.asset(
                          'assets/home_pic.png',
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.29,
                          fit : BoxFit.cover,
                        ),
                        // Container(
                        //   child: InkWell(
                        //     child: Text("LogOut"),
                        //     onTap: () {
                        //       FirebaseAuth.instance.signOut();
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        PreferredSize(
                          preferredSize:Size.fromHeight(75.0),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0,bottom: 15.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(5.0),
                              child: GestureDetector(
                                child: TextFormField(
                                  readOnly: true,
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchDoctor()));
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.search,
                                          color: primaryColor, size: 20.0),
                                      contentPadding:
                                      EdgeInsets.only(left: 15.0, top: 15.0),
                                      hintText: 'Where to find doctor?',
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Quicksand')
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Quick Actions',
                            style: TextStyle(
                              color: Color(0xff3F70B5),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SearchDoctor()));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  color: Color(0xff054195),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/phone-call.png',
                                        width: MediaQuery.of(context).size.width *
                                            0.1,
                                      ),
                                      Text(
                                        'Book\nAppointment',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  color: Color(0xff054195),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/chat.png',
                                        width: MediaQuery.of(context).size.width *
                                            0.1,
                                      ),
                                      Text(
                                        'Chat\nCounsultation',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Articles',
                            style: TextStyle(
                              color: Color(0xff3F70B5),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MotivationPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: ListTile(
                                  leading: Image.asset('assets/article.png'),
                                  title: Text('How to deal with failures'),
                                  subtitle: Text('By Nishant Jain'),
                                  trailing: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/share.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MotivationPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: ListTile(
                                  leading: Image.asset('assets/article.png'),
                                  title: Text('How to deal with failures'),
                                  subtitle: Text('By Nishant Jain'),
                                  trailing: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/share.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MotivationPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: ListTile(
                                  leading: Image.asset('assets/article.png'),
                                  title: Text('How to deal with failures'),
                                  subtitle: Text('By Nishant Jain'),
                                  trailing: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/share.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }
}
