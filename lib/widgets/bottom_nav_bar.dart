import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:event_booking_app/pages/booking_page.dart';
import 'package:event_booking_app/pages/home_page.dart';
import 'package:event_booking_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late List<Widget> pages;
  late HomePage homePage;
  late BookingPage bookingPage;
  late ProfilePage profilePage;
  int currentIndex = 0;
  @override
  void initState() {
    homePage = HomePage();
    bookingPage = BookingPage();
    profilePage = ProfilePage();
    pages = [homePage, bookingPage, profilePage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 25.0,
          ),
          Icon(
            Icons.book_outlined,
            color: Colors.white,
            size: 25.0,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 25.0,
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
