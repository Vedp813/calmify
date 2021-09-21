import 'package:calmify_/home/home.dart';
import 'package:calmify_/home/nav_bar.dart';
import 'package:flutter/material.dart';

class MotivationPage extends StatefulWidget {
  const MotivationPage({Key key}) : super(key: key);

  @override
  _MotivationPageState createState() => _MotivationPageState();
}

class _MotivationPageState extends State<MotivationPage> {
  bool heart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Articles',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff003C8F)),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Color(0xff003C8F),
              size: 25,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NavBar(),
                ),
              );
            }),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/article.png',
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'How to deal with failures',
                style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff2E3A59),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.007,
              ),
              Text(
                'By Nishant Jain',
                style: TextStyle(
                  color: Color(0xff3F70B5),
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.007,
              ),
              Row(
                children: [
                  Icon(
                    Icons.share,
                    size: 20,
                    color: Color(0xff003C8F),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          heart = !heart;
                        });
                      },
                      icon: heart
                          ? Image.asset(
                              "assets/heartfilled.jpeg",
                              width: 20,
                              height: 20,
                            )
                          : Image.asset(
                              "assets/heart.jpeg",
                              width: 20,
                              height: 20,
                            )),
                ],
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.adipiscing elit, ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolo eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitax ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
