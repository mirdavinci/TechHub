import 'package:flutter/material.dart';

Widget customSlide(var imagePath) {
  return Column(
    children: [
      Expanded(
        child: Image.asset(
          imagePath,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
