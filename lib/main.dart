import 'package:event_booking_app/widgets/bottom_nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBZSb01KEQFcYYdN3Ck3cUJtARPadqDPxE",
          authDomain: "event-booking-app-6f69b.firebaseapp.com",
          projectId: "event-booking-app-6f69b",
          storageBucket: "event-booking-app-6f69b.firebasestorage.app",
          messagingSenderId: "1069776236664",
          appId: "1:1069776236664:web:5150bb094ce233a235fd8d",
          measurementId: "G-TLJY2WTQK5"),
    );
  } else {
    Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz-App',
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Error");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return BottomNavBar();
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
