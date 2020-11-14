import 'package:flutter/material.dart';
import 'package:fresh_food_app/modules/dishes.dart';
import 'package:fresh_food_app/styles/textstyles.dart';

Widget ingredientsCard({Ingredients ingredient}) {
  return Stack(
    children: [
    Column(
      children: [
        Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.only(left: 10,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ingredient.containerColor,
          image: DecorationImage(
            image: AssetImage(ingredient.photo,
            ),
          ),
        ),
  ),
        Text(ingredient.name),
        SizedBox(height: 5,),
        Text(ingredient.quantity, style: imageCaption,)
      ],
    ),
  ]
  );
}