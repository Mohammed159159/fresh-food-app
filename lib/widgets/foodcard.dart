import 'package:flutter/material.dart';

Widget foodCard({String photo, String name})
{
  return Stack(
    children: [
      Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 7
              )
            ],
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color(0xFFF3BE71),
              Color(0xFFFB9B2C)
            ]
          )
        ),
        child: Stack(
          children: [
            Positioned(
              top: -45,
              right: -38,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(photo,
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 15,
              child: Container(
                  width: 95,
                  height: 50,
                  child: Text(name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17),)),
            )
          ],
        ),
      ),
    ],
  );
}