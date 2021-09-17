import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var name;
  Future<void> getUserName() async {
    QuerySnapshot documentSnapshot =
        await Firestore.instance.collection('users').getDocuments();
    print(documentSnapshot.documents);

    // FirebaseAuth auth;
    // FirebaseUser user = await auth.currentUser();
    // DocumentSnapshot userDoc =
    //     await Firestore.instance.collection('users').document(user.uid).get();
    // print(userDoc.data['name']);
    // name = userDoc.data['name'];
  }

  @override
  Widget build(BuildContext context) {
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
                    'Hello, hi!',
                    style: TextStyle(
                      color: Color(0xff054195),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff054195),
                    backgroundImage: AssetImage('assets/user.png'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                ],
              ),
              Image.asset(
                'assets/home_pic.png',
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.27,
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
                      getUserName();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Color(0xff054195),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/phone-call.png',
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Text(
                              'Telephonic\nAppointment',
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
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Color(0xff054195),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/chat.png',
                              width: MediaQuery.of(context).size.width * 0.1,
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
                  Container(
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
                          width: MediaQuery.of(context).size.width * 0.08,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
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
                          width: MediaQuery.of(context).size.width * 0.08,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
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
                          width: MediaQuery.of(context).size.width * 0.08,
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
}
