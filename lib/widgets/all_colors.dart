import 'package:flutter/material.dart';

class AllColors {
  LinearGradient homePage() {
    return LinearGradient(
      colors: [
        const Color.fromARGB(248, 255, 235, 123),
        const Color.fromARGB(255, 255, 243, 177),
        const Color.fromARGB(248, 253, 231, 105),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
