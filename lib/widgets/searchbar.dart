import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    double borderRadius = 25;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black26,
            )
          ]
        ),
        child: Stack(
          children: [
            IconButton(
              icon: Icon(Icons.search, size: 25,),
              onPressed: ()
              {
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search for recipes",
                  hintStyle: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.w400),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
