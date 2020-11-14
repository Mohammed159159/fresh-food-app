import 'package:flutter/material.dart';

Widget gradientContainer({Widget widget})
{
  return GestureDetector(
    child: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Color(0xFF474B5B).withOpacity(0.4),
            Color(0xFF2C2E3A).withOpacity(0.8)
          ]
        )
      ),
      child: Center(
        child: widget
      ),
    ),
  );
}