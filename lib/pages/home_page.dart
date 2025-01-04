import 'package:event_booking_app/widgets/all_colors.dart';
import 'package:event_booking_app/widgets/categoryItem.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ScrollController to manage horizontal scrolling
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 120.0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 120.0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
            // For Location and Introduction
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text(
                  "Adabor, Dhaka",
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
            // For Search field
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
            SizedBox(height: 20.0),
            // For list of the event categories with scrolling buttons
            Row(
              children: [
                // Scroll Left Button
                IconButton(
                  icon: Icon(Icons.arrow_left, size: 40),
                  onPressed: _scrollLeft,
                ),
                Expanded(
                  child: SizedBox(
                    height: 110.0,
                    child: ListView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        // For categories 1
                        buildCategoryItem(
                          "assets/images/guitar.png",
                          "Music",
                        ),
                        SizedBox(width: 20.0),
                        // For categories 2
                        buildCategoryItem(
                          "assets/images/brand.png",
                          "Fashion",
                        ),
                        SizedBox(width: 20.0),
                        // For categories 3
                        buildCategoryItem(
                          "assets/images/gamer.png",
                          "Gaming",
                        ),
                        SizedBox(width: 20.0),
                        // For categories 4
                        buildCategoryItem(
                          "assets/images/catering.png",
                          "Food",
                        ),
                        SizedBox(width: 20.0),
                        // For categories 5
                        buildCategoryItem(
                          "assets/images/concert.png",
                          "Festival",
                        ),
                      ],
                    ),
                  ),
                ),
                // Scroll Right Button
                IconButton(
                  icon: Icon(Icons.arrow_right, size: 40),
                  onPressed: _scrollRight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
