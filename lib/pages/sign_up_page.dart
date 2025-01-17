import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/onboarding.jpg",
            fit: BoxFit.cover,
          ),
          Text(
            "Book Your Favorite Party with",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          Text(
            "Event Booking App",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Ticketing, manages reservations, and ensures seamless experiences.",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.black54, width: 2.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/google.png",
                  height: 35.0,
                  width: 35.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Sign In With Google",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
