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
      body: Container(),
    );
  }
}
