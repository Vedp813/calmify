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
              return Scaffold(
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
                        height: MediaQuery.of(context).size.height * 0.29,
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
                            onTap: () {},
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
                            onTap: () {},
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
