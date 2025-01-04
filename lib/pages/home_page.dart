import 'package:event_booking_app/widgets/all_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: AllColors().homePage(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text(
                  "Adabor,Dhaka",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 22.0,
                  ),
                ),
                Text(
                  " Avijit",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              "There are 20 events\naround your location.",
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search_outlined),
                  hintText: "Search your location",
                ),
              ),
            ),
            SizedBox(
              height: 150.0,
              child: ListView(
                children: [
                  Material(
                    child: SizedBox(
                      width: 100.0,
                      child: Column(
                        children: [],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
