import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget stepsCard(String step, int index)
{
  index++;
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.red.withOpacity(0.2),

    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Step $index", style: TextStyle(color: Colors.orange.withOpacity(0.6), fontWeight: FontWeight.w600, fontSize: 16),),
        SizedBox(height: 12,),
        Text(step)
      ],
    ),
  );
}