import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_food_app/modules/dishes.dart';
import 'package:fresh_food_app/styles/textstyles.dart';

Widget dishPageContainer({Dishes dish, BuildContext context})
{
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: height * 0.25,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: Offset(0.0, 5.0),
          blurRadius: 7,
          color: Colors.black26
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(dish.name, style: h1,),
        SizedBox(height: 10,),
        Text("${dish.ingredients.length} ingredients", style: imageCaption,),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            dishContainerElement(icon: Icons.access_time, dishData: "${dish.time} min"),
            dishContainerElement(icon: FontAwesomeIcons.fire, dishData: "${dish.calories} kal"),
            dishContainerElement(icon: Icons.access_time, dishData: "${dish.price} Dollars"),

          ],),
        SizedBox(height: 5,)
      ],
    ),
  );
}

Widget dishContainerElement({IconData icon, dynamic dishData})
{
  return Row(
    children: [
      Icon(icon, color: Colors.deepOrangeAccent,),
      SizedBox(width: 5,),
      Text(dishData.toString(), style: imageCaption,)
    ],
  );
}
