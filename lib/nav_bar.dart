import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:calmify_/appointment/appointment.dart';
import 'package:calmify_/booked/booked.dart';
import 'package:calmify_/home/home.dart';
import 'package:calmify_/motivation_page.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(
              () => _currentIndex = index,
            );
          },
          children: <Widget>[
            HomeScreen(),
            Booked(),
            MotivationPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 500),
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Image.asset(
              'assets/home.png',
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            title: Text('Home'),
            activeColor: Color(0xff0E4BA1),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Image.asset(
              'assets/calendar.png',
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            title: Text(
              'Appointment',
              style: TextStyle(fontSize: 13),
            ),
            activeColor: Color(0xff0E4BA1),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Image.asset(
              'assets/reward.png',
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            title: Text('Motivation'),
            activeColor: Color(0xff0E4BA1),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
