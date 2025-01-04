import 'package:flutter/material.dart';

Widget buildCategoryItem(String imagePath, String label) {
  return Container(
    margin: EdgeInsets.only(bottom: 10.0),
    child: Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 50.0,
              width: 50.0,
              fit: BoxFit.cover,
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
